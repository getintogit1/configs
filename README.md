

<img width="818" height="539" alt="image" src="https://github.com/user-attachments/assets/e0f2034d-ad58-4540-b1a8-ec02316e5232" />
<img width="1898" height="997" alt="image" src="https://github.com/user-attachments/assets/23d7083d-7a1c-41dd-8d10-c1b2ad3d2570" />




Follow these three easy steps to get your Linux terminal and Neovim configured with NvCHad and extendible for customization!
# Terminal & Neovim Environment Setup

Follow these three clear steps to get your Linux terminal and Neovim configured exactly as described.

---

# 1. Install Oh My Posh

1. Run the installer:

   ```bash
   curl -s https://ohmyposh.dev/install.sh | bash -s
   ```
2. Add it to your PATH:

   ```bash
   echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
   source ~/.bashrc
   ```
3. Verify installation:

   ```bash
   which oh-my-posh
   # => /home/youruser/.local/bin/oh-my-posh
   ```
4. Initialize in Bash:

   ```bash
   echo 'eval "$(oh-my-posh init bash --config ~/.posh/themes/amro.omp.json)"' >> ~/.bashrc
   source ~/.bashrc
   ```
5. **Configure your terminal colors**:

   * Open your terminal and go to **Edit → Preferences → Colors**
   * Choose a built‑in scheme or customize your own
   * (Optional) Enable transparency

---

# 2. Install a Nerd Font

### Option A: Quick via Oh My Posh

```bash
oh-my-posh font install        # installs a default Nerd Font
# or
oh-my-posh font install meslo   # installs the Meslo Nerd Font
```

### Option B: Manual installation

1. Download your preferred font from: [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)
2. Create your local fonts directory:

   ```bash
   mkdir -p ~/.local/share/fonts
   ```
3. Copy the downloaded `.ttf`/`.otf` files into `~/.local/share/fonts`
4. Refresh the font cache:

   ```bash
   fc-cache -fv
   ```
5. **Apply the font** in your terminal:

   * Open **Edit → Preferences → Text**
   * Enable **Custom font** and select your Nerd Font
   * Restart the terminal if it doesn’t appear

---

# 3. Set Up Neovim (NvChad)

1. Clone the official NvChad repo:

   ```bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
   ```
2. Clone your personal Neovim repo into a temp folder:

   ```bash
   git clone git@github.com:yourusername/your-nvim-repo.git /tmp/your-nvim
   ```
3. Replace existing config:

   ```bash
   rm -rf ~/.config/nvim
   mkdir -p ~/.config/nvim
   cp -r /tmp/your-nvim/* ~/.config/nvim/
   ```
4. Launch Neovim to install plugins:

   ```bash
   nvim
   ```

---

# Updating

* **Oh My Posh**: `bash install/install-oh-my-posh.sh`
* **Fonts**: `bash install/install-fonts.sh && fc-cache -fv`
* **NvChad**: `cd ~/.config/nvim && git pull`

---


