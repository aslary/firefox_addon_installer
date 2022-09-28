# firefox_addon_installer
A simple bash script for POSIX systems to install your favourite Firefox extensions/add-ons

# Why?
I was guilty of being a distro hopper for a long time (thankfully, Pop!_OS helped me settling down) and was tired of having to manually install all my favourite Firefox add-ons. Because of that, I created this simple bash script which automates the downloading and installation process of the specified add-ons.

# How it works
On every add-on page in Firefox the `Add to Firefox` button links to the download URL of the corresponding `.xpi` file. The `.xpi` file format was created by Mozilla and is primarily used to extend the functionality of their software products in form of extensions. It's basically a `.zip` file containing extension data and other pieces of information.

All URLs for add-ons in Firefox have following structure: `https://addons.mozilla.org/firefox/downloads/file/XXXXXXX/<some filename>.xpi`, with `XXXXXXX` being a seven-digit number identifying each add-on uniquely. 

I found it strange that providing any string (even without the `.xpi` extension) for `<some filename.xpi>` still results into the latest version of an add-on being downloaded. I used this fact to my advantage while creating this script.

# Modifying the script to download and install your own favourite add-ons
In order to modify this script to your beliking, you just have to add the seven-digit identifier of your favourite add-ons into the `$arr` array.

# My personal must-have add-ons
These are defined in the `$arr` array by default (you can easily change them as mentioned above):
- [uBlock Origin by Raymond Hill](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
- [AdGuard AdBlocker by Adguard Software Ltd](https://addons.mozilla.org/en-US/firefox/addon/adguard-adblocker/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
- [Bitwarden - Free Password Manager by Bitwarden Inc.](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
- [I don't care about cookies by Kiko](https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/)
- [Popup Blocker (strict) by Jeremy Schomery](https://addons.mozilla.org/en-US/firefox/addon/popup-blocker/)
- [SponsorBlock - Skip Sponsorships on YouTube by Ajay Ramachandran](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
