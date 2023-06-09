AZREPO=$AZREPO
AZPAT=$AZPAT
AZUSERNAME=$AZUSERNAME
AZUSEREMAIL=$AZUSEREMAIL
AZORG=$AZORG
AZBRANCH=$AZBRANCH
GITBRANCH=$GITBRANCH
git config --global user.email "$AZUSEREMAIL"
git config --global user.name "$AZUSERNAME"
git remote set-url --push origin https://$AZUSERNAME:$AZPAT@dev.azure.com/$AZORG/$AZPROJ/_git/$AZREPO
git fetch --unshallow origin
git add -- . :!commit.sh
git commit -m "syncing"
git push origin $GITBRANCH:$AZBRANCH
