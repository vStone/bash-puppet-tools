# Usage:

    cd
    git clone git://projects.vstone.eu/puppet/puppet-tools/puppet-bashrc.git puppet-bashrc
    ln -sf ~/puppet-bashrc/bashrc_puppet ~/.bashrc_puppet
    ln -sf ~/puppet-bashrc/mkpuppetmod ~/.mkpuppetmod
    echo 'source ~/.bashrc_puppet' >> ~/.bashrc


# Templates:

  You can override the used templates by adjusting them in the ~/.mkpuppetmod
  folder. The script will look for templates based on the following pattern:

    1. <name>-<type>.pp
    2. <name>.pp
    3. default-<type>.pp
    4. default.pp

  Inside a template, you can/should use the following placeholders:

    %name         => Name of the class or definition.
    %modulename   => Name of the provided or detected module.
    %type         => Type (either class or define)
    %typedesc     => Type description (either Class or Definition)

