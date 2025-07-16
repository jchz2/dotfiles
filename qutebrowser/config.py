config.load_autoconfig()

# ==============================================================================
# Apariencia y Comportamiento General
# ==============================================================================
c.backend = 'webengine'
c.url.default_page = 'https://duckduckgo.com/'
c.url.start_pages = ['https://duckduckgo.com/']
c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?q={}',
    'g': 'https://duckduckgo.com/search?q={}',
    'ddg': 'https://duckduckgo.com/?q={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'wiki': 'https://es.wikipedia.org/wiki/{}',
    'gh': 'https://github.com/search?q={}',
}
c.content.blocking.enabled = True
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt']
c.completion.web_history.max_items = 1000
c.session.lazy_restore = True
c.scrolling.smooth = False
c.content.autoplay = True
c.content.webgl = True
c.content.canvas_reading = True
c.content.headers.do_not_track = False
c.colors.webpage.darkmode.enabled = True
c.input.insert_mode.auto_enter = True
c.content.cookies.accept = 'no-3rdparty'
config.set('content.cookies.accept', 'all', 'https://*.amazon.com')
c.qt.args = ['enable-accelerated-video-decode', 'use-angle=metal']
config.set('content.blocking.enabled', False, 'https://*.youtube.com')

# ==============================================================================
# Interfaz de Usuario (UI)
# ==============================================================================
c.statusbar.show = 'never'
c.tabs.show = 'never'
c.tabs.favicons.show = 'always'
c.window.hide_decoration = True
c.auto_save.session = True
c.auto_save.interval = 60
c.downloads.location.directory = '~/Downloads'
c.downloads.location.prompt = True
c.spellcheck.languages = ['en-US']

# ==============================================================================
# Enlaces de Teclas (Keybindings)
# ==============================================================================
config.bind('<Cmd-s>', 'config-cycle statusbar.show always never')
config.bind('<Cmd-e>', 'config-cycle tabs.show alnways never')
config.bind(';m', 'hint links spawn mpv {hint-url}')
config.bind(',m', 'spawn --verbose mpv {url}')
config.bind(',y', 'spawn --userscript youtube-quality.py')
config.bind(',m', 'spawn mpv {url}')
config.bind('<Ctrl-c>', 'yank')
config.bind('+', 'zoom-in')
config.bind('-', 'zoom-out')
config.bind('=', 'zoom')
config.bind('<Ctrl-Tab>', 'tab-next')
config.bind('<Ctrl-Shift-Tab>', 'tab-prev')
config.bind('<Ctrl-w>', 'tab-close')
config.bind('<Ctrl-r>', 'reload -f')
config.bind(',n', 'spawn nvim {url}')

# ==============================================================================
# Colores y fuentes
# ==============================================================================
c.fonts.default_family = 'Source Code Pro'
c.fonts.default_size = '11pt'
c.fonts.completion.entry = '11pt "Source Code Pro"'
c.fonts.debug_console = '11pt "Source Code Pro"'
c.fonts.statusbar = '11pt "Source Code Pro"'
c.colors.completion.fg = ['#9cc4ff', 'white', 'white']
c.colors.completion.odd.bg = '#1c1f24'
c.colors.completion.even.bg = '#232429'
c.colors.completion.category.fg = '#e1acff'
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #000000, stop:1 #232429)'
c.colors.completion.category.border.top = '#3f4147'
c.colors.completion.category.border.bottom = '#3f4147'
c.colors.completion.item.selected.fg = '#282c34'
c.colors.completion.item.selected.bg = '#ecbe7b'
c.colors.completion.item.selected.match.fg = '#c678dd'
c.colors.completion.match.fg = '#c678dd'
c.colors.completion.scrollbar.fg = 'white'
c.colors.downloads.bar.bg = '#282c34'
c.colors.downloads.error.bg = '#ff6c6b'
c.colors.hints.fg = '#282c34'
c.colors.hints.match.fg = '#98be65'
c.colors.messages.info.bg = '#282c34'
c.colors.statusbar.normal.bg = '#282c34'
c.colors.statusbar.insert.fg = 'white'
c.colors.statusbar.insert.bg = '#497920'
c.colors.statusbar.passthrough.bg = '#34426f'
c.colors.statusbar.command.bg = '#282c34'
c.colors.statusbar.url.warn.fg = 'yellow'
c.colors.tabs.bar.bg = '#1c1f34'
c.colors.tabs.odd.bg = '#282c34'
c.colors.tabs.even.bg = '#282c34'
c.colors.tabs.selected.odd.bg = '#282c34'
c.colors.tabs.selected.even.bg = '#282c34'
c.colors.tabs.pinned.odd.bg = 'seagreen'
c.colors.tabs.pinned.even.bg = 'darkseagreen'
c.colors.tabs.pinned.selected.odd.bg = '#282c34'
c.colors.tabs.pinned.selected.even.bg = '#282c34'
