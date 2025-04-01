### 📜 **README.md**  

# **XMLRPC Pingback Vulnerability Scanner**  

This script is a **Bash-based XMLRPC vulnerability scanner** designed to detect WordPress sites vulnerable to **Pingback attacks** via `xmlrpc.php`.  

---

## 🚀 **Features**  
✔ **Scans multiple targets** from a file (`target.txt`).  
✔ **Sends a pingback request** to check if `xmlrpc.php` is vulnerable.  
✔ **Automatically skips non-vulnerable sites**.  
✔ **Logs vulnerable and safe sites separately** (`result_vuln.log` & `result_safe.log`).  

---

## 📥 **How to Use**  

### **1️⃣ Prepare the Target List**  
Create a file named **`target.txt`**, containing the list of target websites:  
```
http://example1.com/xmlrpc.php
http://example2.com/xmlrpc.php
http://example3.com/xmlrpc.php
```

### **2️⃣ Give Execution Permission**  
Run the following command to grant execution permission to the script:  
```bash
chmod +x xmlrpc_scanner.sh
```

### **3️⃣ Execute the Script**  
Run the script using:  
```bash
./xmlrpc_scanner.sh
```

### **4️⃣ Check the Results**  
After execution, the results will be stored in:  
- 🟥 **Vulnerable Websites** → `result_vuln.log`  
- 🟩 **Safe Websites** → `result_safe.log`  

---

## ⚠️ **Disclaimer**  
This script is for **educational and security testing purposes only**. Unauthorized scanning of third-party websites **without permission** may be illegal. **Use responsibly!**  

---

👨‍💻 **Author:** _Frostyxsec_  
📅 **Last Updated:** _April 2025_  
