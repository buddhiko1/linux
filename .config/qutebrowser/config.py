config.load_autoconfig()

# shortcut of search
c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}',
    'g': 'https://github.com/search?o=desc&q={}&s=stars',
    'v': 'https://www.vocabulary.com/dictionary/{}',
    'y': 'https://www.youtube.com/results?search_query={}',
    'b': 'https://www.bing.com/search?q={}&go=Submit&qs=n&form=BESBTB&sp=-1&mkt=zh-CN',
}

# keymap
config.bind('j', 'scroll-px 0 300')
config.bind('k', 'scroll-px 0 -300')
config.bind('H', 'tab-prev')
config.bind('K', 'back')
config.bind('J', 'forward')
config.bind('L', 'tab-next')
config.bind('q', 'tab-close')
config.bind('u', 'undo')
config.bind('c', 'tab-clone')
config.bind('e', 'edit-text')
config.bind('d', 'history-clear')
config.bind('D', 'download-clear')
config.bind('b', 'bookmark-list')
config.bind('m', 'quickmark-save')
config.bind('h', 'history')
config.bind('r', 'reload')
config.bind(';h', 'help')

# toggle status bar
config.bind('b', 'config-cycle statusbar.show always never')
# toggle tableline
config.bind('t', 'config-cycle tabs.show always never')

