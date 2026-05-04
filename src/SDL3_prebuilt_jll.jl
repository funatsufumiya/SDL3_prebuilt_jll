module SDL3_prebuilt_jll

using Artifacts

function get_artifact_path()
    return artifact"SDL3_prebuilt_jll"
end

function get_lib_path()
    libui_lib = "libSDL3.so"

    @static if Sys.iswindows()
        libui_lib = "libSDL3.dll"
    elseif Sys.isapple()
        libui_lib = "libSDL3.dylib"
    else
        libui_lib = "libSDL3.so"
    end

    p = joinpath(get_artifact_path(), "lib", libui_lib)
    if isfile(p)
        return p
    else
        return nothing
    end
end


end # module SDL3_prebuilt_jll
