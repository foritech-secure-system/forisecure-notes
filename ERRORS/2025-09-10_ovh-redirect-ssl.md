# ERR: OVH redirect (HTTPS)
**When:** 2025-09-10  
**Symptom:** HTTP 301 works; HTTPS fails (connect/reset)  
**Root cause:** redirect rule pointed to http:// w/o SSL enabled  
**Fix:** change target to **https://** and enable SSL for redirect; wait 5–15 min  
**Status:** ✅ fixed
