from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
from qutebrowser.config.config import ConfigContainer  # noqa: F401

config = config  # type: ConfigAPI # noqa: F821 pylint: disable=E0602,C0103
c = c  # type: ConfigContainer # noqa: F821 pylint: disable=E0602,C0103

config.load_autoconfig(False)

c.aliases["qa"] = "quit --save"


def keybinds():
    config.bind("j", "scroll-px 0 200")
    config.bind("k", "scroll-px 0 -200")

    config.bind("J", "scroll-px 0 500")
    config.bind("K", "scroll-px 0 -500")

    config.bind("!", "set-cmd-text :open -tr !")

    config.bind("gt", "spawn --userscript vim-tab-next")
    config.bind("gT", "spawn --userscript vim-tab-prev")

    config.bind("gn", "navigate next")
    config.bind("gN", "navigate prev")

    config.bind("O", "set-cmd-text -s :open -tr")

    config.bind(",v", "spawn mpv{url}")
    config.bind(",f", "spawn firefox {url}")

    config.bind("cm", "clear-messages")

    config.unbind("D")
    config.bind("Dd", "download")
    config.bind("Da", "download-cancel")  # abort
    config.bind("Dc", "download-clear")  # clear
    config.bind("Dx", "download-delete")  # delete
    config.bind("Do", "download-open")  # open
    config.bind("Dh", "download-remove")  # hide
    config.bind("Dr", "download-retry")  # retry

    config.bind("wi", "devtools")
    config.bind("wf", "devtools-focus")

    config.bind("tpk", "set tabs.position top")
    config.bind("tpj", "set tabs.position bottom")
    config.bind("tph", "set tabs.position left")
    config.bind("tpl", "set tabs.position right")

    config.bind("ö", "set-cmd-text -s :quickmark-load")

    config.bind("<Space>t", "config-cycle --print content.proxy 'socks://localhost:9050' 'system'")


keybinds()

# use tor
c.content.proxy = 'socks://localhost:9050/'
c.url.searchengines['DEFAULT'] = 'http://127.0.0.1:8888/?q={}'

c.auto_save.session = True

c.changelog_after_upgrade = "patch"

c.colors.completion.fg = ["white", "white", "#ff7777"]

c.colors.tabs.even.bg = "#111"
c.colors.tabs.odd.bg = "#222"
c.colors.tabs.selected.even.bg = "#a20"
c.colors.tabs.selected.odd.bg = "#b31"

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = "never" # ddg looks bad else
c.colors.webpage.preferred_color_scheme = "dark"

c.content.pdfjs = True
c.content.javascript.clipboard = "access"
c.content.mouse_lock = True
c.content.headers.accept_language = "en-US;en;de-DE;de;q=0.9"

c.downloads.remove_finished = 250_000

c.scrolling.smooth = True

c.tabs.last_close = "startpage"
c.tabs.favicons.scale = 1.1
c.tabs.indicator.padding["bottom"] = 2
c.tabs.indicator.padding["top"] = 2

c.statusbar.padding["bottom"] = 2
c.statusbar.padding["top"] = 2

SEARX = "127.0.0.1:8888/"
c.url.default_page = SEARX
c.url.start_pages = SEARX

c.window.hide_decoration = True

c.aliases = {
    **c.aliases,
    "wikirace": "spawn --userscript wikirace-init",
    "wikirace-exit": "spawn --userscript wikirace-exit",
}


with config.pattern(SEARX) as p:
    p.hints.selectors['all'].append('label[for^=checkbox]')
