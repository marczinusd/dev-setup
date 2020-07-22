:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install all the packages
:::: Browsers
choco install googlechrome -y

:::: Dev tools
:::::: Text editors / IDEs
choco install vscode -y
choco install jetbrains-rider -y
choco install linqpad -y

:::::: Dev envs
choco install dotnetcore-sdk -y
choco install powershell-core -y
choco install nodejs.install -y
choco install nvm -y
choco install miniconda3 -y
::choco install haskell-stack -y

:::::: Command line
choco install gow -y
choco install microsoft-windows-terminal -y
choco install jq -y
choco install sysinternals -y
choco install curl -y
choco install nuget.commandline -y

:::::: Source control
choco install git.install -y
choco install git-fork -y
choco install poshgit -y
choco install beyondcompare -y

:::::: Misc tools
choco install zeal -y
choco install insomnia-rest-api-client -y
choco install dotcover -y
choco install sysinternals -y
choco install procexp -y
choco install powertoys -y

:::: Media
choco install mpv.install -y
choco install vlc -y
choco install streamlink-twitch-gui -y
choco install spotify -y
choco install discord -y
choco install youtube-dl -y
choco install plexmediaserver -y

:::: Utilities + other
choco install 7zip.install -y
choco install malwarebytes -y
choco install qbittorrent -y
choco install calibre -y
choco install treesizefree -y
choco install sumatrapdf.install -y
choco install caffeine -y
choco install citrix-workspace -y
choco install zoom -y

:::: Gaming
choco install goggalaxy -y
choco install steam -y
choco install epicgameslauncher -y
choco install borderlessgaming -y