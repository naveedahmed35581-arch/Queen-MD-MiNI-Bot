#!/bin/bash
# ===================================================================
# MANO QUEEN MINI BOT - FINAL ONE COMMAND FULL REPO REBRAND
# Image URL: https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg
# Ye ek file se pure bot ki har file change hogi - API chor ke
# ===================================================================

echo "👑 MANO QUEEN MINI BOT - Full Repo Rebrand Starting..."

# ============ FINAL DETAILS ============
NEW_BOT_NAME="Mano Queen Mini Bot"
NEW_OWNER_NAME="Mano queen"
NEW_OWNER_NUMBER="923213231887"
NEW_POWERED_BY="queen mini bot"
NEW_CHANNEL_LINK="https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357"
NEW_NEWS_MAIN="120363420163227139@newsletter"
NEW_NEWS_2="120363365530973563@newsletter"
NEW_NEWS_3="120363407898199836@newsletter"
NEW_IMG_URL="https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg"

# ============ STEP 1: CONFIG.JS PURA NAYA ============
cat > config.js << 'CONFIGEOF'
module.exports = {
  botName: "Mano Queen Mini Bot",
  botFullName: "MANO QUEEN MINI BOT",
  ownerName: "Mano queen",
  ownerNumber: "923213231887",
  ownerNumbers: ["923213231887"],
  ownerJid: "923213231887@s.whatsapp.net",
  poweredBy: "queen mini bot",
  footer: "© Powered by queen mini bot",
  channelLink: "https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357",
  channelLink2: "https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357",
  channelMessageLink: "https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357",
  newsletterJid: "120363420163227139@newsletter",
  newsletterJid1: "120363420163227139@newsletter",
  newsletterJid2: "120363365530973563@newsletter",
  newsletterJid3: "120363407898199836@newsletter",
  channelJid: "120363420163227139@newsletter",
  botImage: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  menuImage: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  aliveImage: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  thumbnail: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  pairImage: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  menuImg: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  aliveImg: "https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg",
  prefix: ".",
  prefa: ["."],
  worktype: "public",
  mode: "public",
  timezone: "Asia/Karachi"
}
CONFIGEOF

echo "✅ config.js -> NEW"

# ============ STEP 2: PURE REPO KI HAR FILE SCAN & REPLACE ============
find . -type f \( -name "*.js" -o -name "*.json" -o -name "*.html" \) \
-not -path "*/node_modules/*" \
-not -path "*/.git/*" \
-not -name "MANO-QUEEN-FINAL.sh" | while read file; do

  # Channel Link
  sed -i -E "s|https://whatsapp\.com/channel/[A-Za-z0-9/_\-\.]*|https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357|g" "$file"

  # Newsletter JIDs
  sed -i -E "s|120363[0-9]+@newsletter|120363420163227139@newsletter|g" "$file"

  # Owner Numbers
  sed -i -E "s|923[0-9]{8,12}|923213231887|g" "$file"
  sed -i -E "s|92[0-9]{10,13}|923213231887|g" "$file"

  # Bot Names
  sed -i "s|Queen-MD-MiNI-Bot|Mano Queen Mini Bot|gI" "$file"
  sed -i "s|QUEEN-MD-MINI-BOT|Mano Queen Mini Bot|gI" "$file"
  sed -i "s|Queen MD Mini Bot|Mano Queen Mini Bot|gI" "$file"
  sed -i "s|Queen-MD|Mano Queen Mini Bot|gI" "$file"

  # Old Image URLs -> New Image URL (sirf image wali lines)
  sed -i -E "s|https://i\.ibb\.co/[^\"' ]*|https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg|g" "$file"

done

echo "✅ All files (plugins/lib/data/bot.js/pair.html) cleaned"

# ============ STEP 3: 2nd & 3rd NEWSLETTER RANDOM FILES ME ============
find plugins -type f -name "*.js" 2>/dev/null | shuf -n 20 | while read f; do
  sed -i "s|120363420163227139@newsletter|120363365530973563@newsletter|g" "$f"
done
find plugins -type f -name "*.js" 2>/dev/null | shuf -n 20 | while read f; do
  sed -i "s|120363420163227139@newsletter|120363407898199836@newsletter|g" "$f"
done

echo ""
echo "================================================================="
echo "✅✅✅ FULL REBRAND DONE - MANO QUEEN MINI BOT ✅✅✅"
echo "Bot: Mano Queen Mini Bot"
echo "Owner: Mano queen - 923213231887"
echo "Channel: https://whatsapp.com/channel/0029VbAQ9uwLdQed2GwbY60a/3357"
echo "News: 120363420163227139 | 120363365530973563 | 120363407898199836"
echo "Image: https://i.ibb.co/Zp9NrwPR/8ff3c4f8edcf.jpg"
echo "================================================================="
echo ""
echo "Ab push karo:"
echo "git add . && git commit -m 'Mano Queen Final All Files' && git push"
