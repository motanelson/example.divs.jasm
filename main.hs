import Foreign.C.Types
import Foreign.C.String

foreign import ccall "prints"
    prints :: CString -> IO ()

main :: IO ()
main = do
    str <- newCString "\27[47;30mhello world...."
    prints str