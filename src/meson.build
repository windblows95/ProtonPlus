sources = files(
  'main.vala',
  'globals.vala',

  'widgets/application.vala',
  'widgets/status-box.vala',
  'widgets/window.vala',
  'widgets/scroll-controller.vala',
  'widgets/update-button.vala',

  'widgets/launchers-popover/launchers-popover-button.vala',
  'widgets/launchers-popover/launchers-popover-list-row.vala',

  'widgets/runners/release-row.vala',
  'widgets/runners/load-more-row.vala',
  'widgets/runners/runner-group.vala',
  'widgets/runners/runner-row.vala',
  'widgets/runners/description-dialog.vala',
  'widgets/runners/remove-dialog.vala',
  'widgets/runners/install-dialog.vala',
  'widgets/runners/upgrade-dialog.vala',
  'widgets/runners/steamtinkerlaunch-row.vala',
  'widgets/runners/basic-row.vala',
  'widgets/runners/installed-row.vala',
  'widgets/runners/runners-box.vala',
  'widgets/runners/filters-box.vala',

  'widgets/games/games-box.vala',
  'widgets/games/switch-profile-button.vala',
  'widgets/games/game-row.vala',
  'widgets/games/extra-button.vala',
  'widgets/games/mass-edit-dialog.vala',
  'widgets/games/mass-edit-button.vala',
  'widgets/games/shortcut-button.vala',
  'widgets/games/select-button.vala',
  'widgets/games/unselect-button.vala',
  'widgets/games/launch-options-dialog.vala',
  'widgets/games/profile-dialog.vala',
  'widgets/games/profile-button.vala',
  'widgets/games/default-tool-button.vala',
  'widgets/games/default-tool-dialog.vala',
  'widgets/games/compatibility-tool-row.vala',
  'widgets/games/compatibility-tool-dropdown.vala',

  'models/group.vala',
  'models/steam-profile.vala',
  'models/launcher.vala',
  'models/release.vala',
  'models/runner.vala',
  'models/parameters.vala',
  'models/game.vala',
  'models/simple-runner.vala',

  'models/launchers/bottles.vala',
  'models/launchers/hgl.vala',
  'models/launchers/lutris.vala',
  'models/launchers/steam.vala',
  'models/launchers/winezgui.vala',

  'models/games/steam.vala',

  'models/vdf/node.vala',
  'models/vdf/binary.vala',
  'models/vdf/shortcut.vala',

  'models/runners/basic.vala',
  'models/runners/github.vala',
  'models/runners/github-action.vala',
  'models/runners/gitlab.vala',
  'models/runners/installed.vala',
  'models/runners/steamtinkerlaunch.vala',

  'models/releases/basic.vala',
  'models/releases/github-action.vala',
  'models/releases/upgrade.vala',
  'models/releases/steamtinkerlaunch.vala',
  'models/releases/latest.vala',

  'utils/filesystem.vala',
  'utils/web.vala',
  'utils/parser.vala',
  'utils/system.vala',
  'utils/i18n.vala',
)

deps = [
  globals_dep,
  dependency('gtk4'),
  dependency('glib-2.0'),
  dependency('libadwaita-1', version: '>= 1.6'),
  dependency('json-glib-1.0'),
  dependency('libsoup-3.0'),
  dependency('gee-0.8'),
  dependency('libarchive')
]

executable(
  meson.project_name().split('.')[2].to_lower(),
  resources,
  sources,
  dependencies: deps,
  include_directories: globals_inc,
  install: true
)
