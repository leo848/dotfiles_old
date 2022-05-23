from qutebrowser.config.configfiles import ConfigAPI # noqa: F401
from qutebrowser.config.config import ConfigContainer # noqa: F401

config = config  # type: ConfigAPI # noqa: F821 pylint: disable=E0602,C0103
c = c  # type: ConfigContainer # noqa: F821 pylint: disable=E0602,C0103

c.aliases["qa"] = "quit --save"

config.bind("j", "scroll-px 0 200")
config.bind("k", "scroll-px 0 -200")

config.bind("J", "scroll-px 0 500")
config.bind("K", "scroll-px 0 -500")

config.bind("!", "set-cmd-text :open -tr !")

config.bind("gt", "tab-focus")
config.bind("gT", "tab-prev")

config.bind("gn", "navigate next")
config.bind("gN", "navigate prev")

config.bind("O", "set-cmd-text -s :open -tr")

config.bind(",v", "spawn mpv{url}")
config.bind(",f", "spawn firefox {url}")

config.bind("cm", "clear-messages")


config.unbind("D")
config.bind("Dd", "download")
config.bind("Da", "download-cancel") # abort
config.bind("Dc", "download-clear")  # clear
config.bind("Dx", "download-delete") # delete
config.bind("Do", "download-open")   # open
config.bind("Dh", "download-remove") # hide
config.bind("Dr", "download-retry")  # retry

config.bind("tpk", "set tabs.position top")
config.bind("tpj", "set tabs.position bottom")
config.bind("tph", "set tabs.position left")
config.bind("tpl", "set tabs.position right")

config.bind("ö", "set-cmd-text -s :quickmark-load")

c.auto_save.session = True
c.colors.tabs.even.bg = "#111"
c.colors.tabs.odd.bg = "#222"
c.colors.tabs.selected.even.bg = "#a20"
c.colors.tabs.selected.odd.bg = "#b31"
