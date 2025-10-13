-- xmonad 0.17.2

-- To avoid setting a global GHC environment, run the following in the
-- ~/.config/xmonad directory after installing xmonad:
-- $ cabal install --lib --package-env=. xmonad xmonad-contrib
--
-- This will setup a local environment so, you can compile with
-- [~/.config/xmonad]$ xmonad --recompile

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
