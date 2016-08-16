#!/bin/sh

echo '1.) Removing old files...'
rm ohc.js
echo '2.) Compiling...'
jison ohc.jison
echo '3.) Running test file...'
node ohc.js test