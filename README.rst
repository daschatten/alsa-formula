====
alsa
====

Formula to install alsa-utils and configure alsa.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``alsa``
--------

Installs alsa-utils.

``alsa.asound-state``

Manages asound.state file.

See alsa/pillar.example.

Note
====

If the asound.state file is changed by salt after reboot of the target machine this is because the settings are stored and restored by alsa at boot and reboot. You can do the following to prevent this:

* copy the file instead copying contents
* check the indention of your asound.state file
* try other volume settings
