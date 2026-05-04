# Madaan Rishabh & Co – Chartered Accountants Website

Professional website for Madaan Rishabh & Co, Chartered Accountants based in Gurugram, Haryana.

## Features

- 🏢 Professional business website
- 📱 Fully responsive design
- 🔍 SEO optimized
- 🔐 HTTPS secure
- ⚡ Fast performance with Azure CDN
- 🚀 Continuous deployment via GitHub Actions

## Services Offered

- Business Incorporation
- GST & Taxation
- Accounting & Bookkeeping
- Financial Advisory
- Compliance Services
- Income Tax Returns
- Company Registration

## Deployment

This website is deployed using **Azure Static Web Apps** with GitHub Actions CI/CD.

### Prerequisites

- GitHub Account
- Azure Subscription
- Custom Domain (optional)

### Setup Instructions

1. **Clone or fork this repository**
   ```bash
   git clone https://github.com/your-username/madaanrishabhandco.com.git
   cd madaanrishabhandco.com
   ```

2. **Create Azure Static Web App**
   ```bash
   # Using Azure CLI
   az staticwebapp create \
     --name swa-madaan-ca \
     --resource-group rg-madaan-ca-southeast \
     --source https://github.com/your-username/madaanrishabhandco.com \
     --branch main \
     --login-with-github
   ```

3. **Configure GitHub Secrets**
   - Copy the deployment token from Azure Portal
   - Add as `AZURE_STATIC_WEB_APPS_API_TOKEN` secret in GitHub repository

4. **Push to main branch to deploy**
   ```bash
   git add .
   git commit -m "Initial deployment"
   git push origin main
   ```

### Custom Domain Setup

After deployment:

1. Go to Azure Portal → Static Web App → Custom domains
2. Add your custom domain (madaanrishabhandco.com)
3. Update your domain's DNS records:
   - Add CNAME record pointing to your Azure Static Web App domain
   - Add TXT record for domain verification

### File Structure

```
.
├── index.html.html          # Main website
├── infra/                   # Infrastructure as Code
│   ├── main.bicep          # Bicep template
│   └── parameters.bicepparam
├── .github/
│   └── workflows/          # GitHub Actions
│       └── azure-static-web-apps-deploy.yml
├── staticwebapp.config.json # Azure SWA configuration
└── README.md               # This file
```

## Contact

**CA Rishabh Madaan**
- Phone: +91-9896880058
- Email: Rishabh@madaanrishabhandco.com
- Address: Gurugram, Haryana
- GSTIN: 06CAQPM5464E1ZF

## License

© 2026 Madaan Rishabh & Co. All rights reserved.
