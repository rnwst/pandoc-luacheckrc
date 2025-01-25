stds.pandoc = {
    read_globals = {
        'pandoc',
        'PANDOC_READER_OPTIONS',
        'PANDOC_WRITER_OPTIONS',
        'PANDOC_STATE',
        'FORMAT'
    },

    globals = {
        'traverse',
        'Code',
        'CodeBlock',
        'Div',
        'Figure',
        'Image',
        'Math',
        'Meta',
        'Pandoc',
        'Table'
    }
}

std = 'lua54+pandoc'
