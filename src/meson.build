pawfectly_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
  'header.vala'
]

pawfectly_deps = [
  dependency('gtk4'),
]

gnome = import('gnome')

pawfectly_sources += gnome.compile_resources('pawfectly-resources',
  'pawfectly.gresource.xml',
  c_name: 'pawfectly'
)

executable('pawfectly', pawfectly_sources,
  vala_args: '--target-glib=2.50',  dependencies: pawfectly_deps,
  install: true,
)
