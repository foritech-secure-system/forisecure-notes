# ERR: GitHub Pages + custom domain warning
**When:** 2025-09-10  
**Where:** repo pages settings / OVH DNS  
**Symptom:** “You must verify your domain …”  
**Root cause:** domain verified under user, while repo owned by org  
**Fix:** verify under org; add TXT `_github-pages-challenge-<org>`; wait 5–30 min; set Custom domain; enable HTTPS  
**Status:** ✅ fixed
