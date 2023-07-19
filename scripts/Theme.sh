#!/bin/bash
cat << "EOF"

echo"  _   _                    ____       _            _   _        _____ _                         "
echo" | \ | | _____   ____ _   / ___| __ _| | __ _  ___| |_(_) ___  |_   _| |__   ___ _ __ ___   ___ "
echo" |  \| |/ _ \ \ / / _  | | |  _ / _  | |/ _  |/ __| __| |/ __|   | | | '_ \ / _ \ '_   _ \ / _ \"
echo" | |\  | (_) \ V / (_| | | |_| | (_| | | (_| | (__| |_| | (__    | | | | | |  __/ | | | | |  __/"
echo" |_| \_|\___/ \_/ \__,_|  \____|\__,_|_|\__,_|\___|\__|_|\___|   |_| |_| |_|\___|_| |_| |_|\___|"            
echo"                                Installer by Bossman7309                                        "

EOF

# Define the URL of the theme's Git repository
THEME_REPO="https://github.com/NicklasVraa/Nova-galactic-theme.git"

# Define the directory of the theme within the cloned repository
THEME_DIR="/Nova-galactic"

# Create a ".themes" directory in the home folder if it doesn't already exist
mkdir -p ~/.themes

# Clone the theme repository into a temporary directory
TEMP_DIR=$(mktemp -d -t theme-XXXXXXXXXX)
git clone $THEME_REPO $TEMP_DIR

# Move the specific theme directory to the ".themes" directory
mv $TEMP_DIR/$THEME_DIR ~/.themes

# Delete the temporary directory
rm -rf $TEMP_DIR

echo "+--------------------------+"
echo "| Theme has been installed.|" 
echo "+--------------------------+"

echo "+----------------------------------------------------------------------+"
echo "| now go to your themes application and select the Nova Galactice theme|" 
echo "+----------------------------------------------------------------------+"
