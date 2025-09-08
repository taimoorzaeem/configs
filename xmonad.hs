-- xmonad 0.18.0

import XMonad
import XMonad.Util.EZConfig
import XMonad.Actions.SpawnOn
import XMonad.Layout.Grid

import Control.Monad (replicateM_)

myTerminal = "gnome-terminal --hide-menubar"

main :: IO ()
main = xmonad def
    { terminal = myTerminal
    , startupHook = spawnTerminals
    , layoutHook = Grid ||| layoutHook def -- 2 x 2 Grid
    }

spawnTerminals :: X ()
spawnTerminals = do
    replicateM_ 4 $ spawnOn "1" myTerminal -- Spawn 4 terminals in workspace 1
