1. install oh my posh:
- curl -s https://ohmyposh.dev/install.sh | bash -s
- echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
- source ~/.bashrc
- which oh-my-posh
- --> /home/sam/.local/bin/oh-my-posh
- echo 'eval "$(oh-my-posh init bash --config ~/.posh/themes/amro.omp.json)"' >> ~/.bashrc
- source ~/.bashrc
  Finished

2. Install A Mono nerdfont
EIther:
oh-my-posh font install
oh-my-posh font install meslo

Or for more customization:
visit: https://www.nerdfonts.com/font-downloads
ANd downloa dhere a custom font you like

Create:
mkdir -p ~/.local/share/fonts
copy your files into here
than: run: 
fc-cache -fv
than click on your bash in top left corner on :
edit -> preferences -> text -> click cutom font -> select your font
it should NOT be a Mono Font
when its not showing up, close your terminal and open a new one.
