import XMonad
import XMonad.Util.EZConfig

main :: IO ()
main = xmonad def
    { terminal = "gnome-terminal" }
