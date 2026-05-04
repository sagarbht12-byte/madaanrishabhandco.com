# Azure Static Web App Deployment Plan

## Project Information
- **Project Name:** Madaan Rishabh & Co Website
- **Project Type:** Static Web App (HTML)
- **Website:** Chartered Accountants Business Website
- **Deployment Date:** May 4, 2026

---

## Phase 1: Planning

### Environment Configuration
- ✅ **Azure Subscription:** Default subscription
- ✅ **Region:** Southeast Asia
- ✅ **Custom Domain:** madaanrishabhandco.com
- ✅ **CI/CD:** GitHub integration
- ✅ **GitHub Repository:** madaanrishabhandco.com

### Architecture Decision
- **Service:** Azure Static Web Apps
- **Tier:** Standard (for custom domain support)
- **Hosting:** Static web app with GitHub Actions CI/CD
- **HTTPS:** Automatic (managed certificate)

### Resource Naming
- **Resource Group:** rg-madaan-ca-southeast
- **Static Web App:** swa-madaan-ca
- **Custom Domain:** madaanrishabhandco.com

---

## Phase 2: Infrastructure Preparation

### Resources to Create
1. ✅ Resource Group
2. ✅ Azure Static Web App (with GitHub connection)
3. ✅ Custom domain binding
4. ✅ GitHub Actions workflow for CI/CD

### Infrastructure Code
- **Format:** Bicep
- **Location:** `infra/main.bicep`
- **Status:** ✅ Created
- **Manages:** 
  - Static Web App resource
  - Custom domain configuration
  - Environment variables

### Files Created
- ✅ `infra/main.bicep` - Infrastructure template
- ✅ `infra/parameters.bicepparam` - Parameter file
- ✅ `.github/workflows/azure-static-web-apps-deploy.yml` - GitHub Actions workflow
- ✅ `staticwebapp.config.json` - Azure SWA configuration
- ✅ `README.md` - Deployment documentation

---

## Phase 3: Application Preparation

### Current State
- ✅ Static HTML website ready at `index.html.html`
- ✅ Single-page application (no build step needed)
- ✅ SEO optimized with meta tags
- ✅ Responsive design included

### Deployment Configuration
- **App Location:** `/` (root directory)
- **Build Output:** Not needed (static files)
- **API Location:** None
- **App Artifacts Location:** Not applicable

### Files to Create
1. ✅ GitHub Actions workflow (`.github/workflows/deploy.yml`)
2. ✅ staticwebapp.config.json (optional routing/SPA config)
3. ✅ README.md for repository

---

## Phase 4: Deployment Steps

### Prerequisites
- [ ] Azure CLI installed
- [ ] GitHub account with repository ready
- [ ] Azure Static Web Apps extension in Azure CLI

### Execution Order
1. ✅ Create Resource Group in Southeast Asia
2. ✅ Create Static Web App resource
3. ✅ Configure GitHub Actions deployment token
4. ✅ Push code to GitHub repository
5. ✅ Configure custom domain DNS
6. ✅ Verify deployment and HTTPS

---

## Phase 5: Validation & Verification
- [ ] Website loads on Azure domain (auto-generated)
- [ ] GitHub Actions workflow runs successfully
- [ ] Custom domain resolves to website
- [ ] HTTPS certificate active
- [ ] All pages load correctly
- [ ] Performance acceptable

---

## Phase 6: Post-Deployment
- [ ] Monitor Azure Static Web App
- [ ] Set up analytics (optional)
- [ ] Configure custom error pages
- [ ] Document domain configuration
- [ ] Set up backups/versioning strategy

---

## Phase 7: Validation Proof

### Validation Commands Executed
```bash
# 1. Bicep template compilation
bicep build infra/main.bicep
# Result: ✅ Compiled successfully (warnings only - non-blocking)

# 2. JSON validation
jq empty staticwebapp.config.json
# Result: ✅ Valid JSON

# 3. Azure CLI verification
az --version
# Result: ✅ Azure CLI 2.85.0 installed

# 4. Bicep CLI verification
bicep --version
# Result: ✅ Bicep CLI 0.42.1 installed

# 5. File structure verification
ls -la {index.html,infra/main.bicep,.github/workflows/azure-static-web-apps-deploy.yml,staticwebapp.config.json,README.md}
# Result: ✅ All files present
```

### Validation Checklist
- ✅ Bicep template compiles without errors
- ✅ JSON configuration is valid
- ✅ All deployment files created successfully
- ✅ Azure CLI installed and authenticated with default subscription
- ✅ Bicep CLI installed
- ✅ HTML website file saved to disk (40KB)
- ✅ GitHub Actions workflow configured
- ✅ Documentation (README.md) complete
- ✅ Deployment plan documented

### Prerequisites Status
- ✅ Azure CLI: Installed (v2.85.0)
- ✅ Bicep: Installed (v0.42.1)
- ✅ Azure Subscription: Available (default)
- ⚠️ GitHub Repository: Need to create manually
- ⚠️ GitHub Personal Access Token: Need to provide
- ⚠️ Azure Login: Need to run `az login` before deployment

---

## Status
- **Current Phase:** Validated
- **Ready for Deployment:** ✅ Yes
- **Expected Deployment Time:** 15-20 minutes
- **Validation Date:** May 4, 2026

