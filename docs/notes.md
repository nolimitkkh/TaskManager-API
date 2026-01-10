# Deployment Notes

## VPS Deployment Challenges and Solutions

### Challenge 1: Wrong Repository URL

**Problem:**

- Initially cloned an empty repository using the wrong URL
- Used a repository URL from another GitHub account by mistake
- This resulted in an empty directory with no project files

**Solution:**

- Verified the correct GitHub repository URL for my account
- Deleted the incorrect clone
- Re-cloned using the correct URL: `https://github.com/nolimitkkh/TaskManager-API.git`
- Verified the contents with `ls -la` to ensure all files were present

**Lesson Learned:**
Always double-check repository URLs before cloning, especially when working with multiple GitHub accounts.

---

### Challenge 2: Wrong Directory for Docker Build

**Problem:**

- Attempted to run `docker build` command from the home directory
- Docker couldn't find the Dockerfile because I wasn't in the correct project directory
- Received error: "unable to prepare context: unable to evaluate symlinks in Dockerfile path"

**Solution:**

- Used `cd TaskManager-API` to navigate into the project directory first
- Verified I was in the correct directory with `pwd`
- Then ran the Docker build command successfully
- Made this a standard practice: always `cd` into project directory before Docker operations

**Lesson Learned:**
Docker commands must be run from the directory containing the Dockerfile. Always verify your current working directory before running Docker commands.

---

## Deployment Checklist

For future deployments, follow this checklist to avoid common pitfalls:

- [X] Verify correct repository URL
- [X] Successfully clone repository
- [X] Navigate into project directory (`cd TaskManager-API`)
- [X] Verify Dockerfile exists (`ls -la`)
- [X] Build Docker image
- [X] Run Docker container with correct port mapping
- [X] Test deployment with curl
- [X] Verify in browser
- [X] Update GitHub repository website URL to production IP

---

## Additional Notes

### VPS Information

- **IP Address:** 161.35.207.86
- **OS:** Ubuntu
- **Docker Port Mapping:** 80:5000 (Host:Container)

### Successful Deployment Commands

```bash
git clone https://github.com/nolimitkkh/TaskManager-API.git
cd TaskManager-API
sudo docker build -t task-manager-api .
sudo docker run -d -p 80:5000 --name task-api task-manager-api
```

### Verification

```bash
curl http://161.35.207.86
```

---

**Date:** January 2026
**Status:** Successfully Deployed ✅
