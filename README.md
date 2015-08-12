# (Un)official Puppet Labs C++ Style Layer for Spacemacs

## Description

This layer further configures the [Spacemacs](https://github.com/syl20bnr/spacemacs) C/C++ layer to change the indentation settings. Are they better this way? Who knows!

## Usage

Clone this repo, for example to `~/spacemacs-layers/pl-c++`:

```
mkdir -p ~/spacemacs-layers/
git clone https://github.com/holguinj/spacemacs-pl-cpp ~/spacemacs-layers/pl-c++
```

Then add that path to `dotspacemacs-configuration-layer-path` in your `.spacemacs` file:

```
(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   dotspacemacs-configuration-layer-path '("~/spacemacs-layers/") ;; <--
```

Finally, add `pl-c++` to your `dotspacemacs-configuration-layers` list and reload your config.
