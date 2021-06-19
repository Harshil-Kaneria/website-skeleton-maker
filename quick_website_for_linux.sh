#!/bin/bash  


#Get Website Name From User	
echo "Enter Your Website Name :- "  
read website_name 

#Creating Directory
mkdir -p "$website_name"
mkdir -p "$website_name"/asset
mkdir -p "$website_name"/asset/images
mkdir -p "$website_name"/asset/css
mkdir -p "$website_name"/asset/js

#Creating Files
touch "$website_name"/index.html
touch "$website_name"/asset/css/styles.css
touch "$website_name"/asset/js/main.js

#Add Html Syntax
cd "$website_name"
file="index.html"
echo '<!DOCTYPE html>' >> $file
echo '<html lang="en">' >> $file
echo '<head>' >> $file
echo '   <!-- Mata Tags -->' >> $file
echo '   <meta charset="UTF-8">' >> $file
echo '   <meta name="viewport" content="width=device-width,initial-scale=1.0">' >> $file
echo '   <title>'$website_name'</title>' >> $file
echo '   <link rel="stylesheet" href="./asset/css/styles.css">' >> $file
echo '</head>' >> $file
echo '<body>' >> $file
echo '    <h1>Quick Site Run Fine !</h1>' >> $file
echo '    <script src="./asset/js/main.js"></script>' >> $file
echo '</body>' >> $file
echo '</html>' >> $file
cat $file

clear