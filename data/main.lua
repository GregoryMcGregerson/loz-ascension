local game_manager = require("scripts/game_manager")

function sol.main:on_started()
  sol.video.set_window_size(1280, 720)
  sol.language.set_language("en")
--  local solarus_logo = require("menus/solarus_logo")
--  sol.menu.start(self, solarus_logo)
--  solarus_logo.on_finished = function()
    local game = game_manager:create("save1.dat")
    game:start()
  end
