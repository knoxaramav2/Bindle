

param(
    [switch]    $c,
    [switch]    $b
)

if($c){ #clean
    Write-Host "Cleaning..."
    cmake --build "$pwd/src" --target clean
    rm "CMakeCache.txt" -ErrorAction SilentlyContinue
    Remove-Item -Recurse -Force "$pwd/build" -ErrorAction SilentlyContinue
}

if($b){ #build
    Write-Host "Building..."
    cmake -B "$pwd/build" -S "$pwd/src" -DCMAKE_CXX_COMPILER="$cpp_compiler" `
        -DCMAKE_C_COMPILER="$c_compiler" -DCMAKE_BUILD_TYPE="$releaseType"
    # cmake --build "$local_path/build" --config "$releaseType"
    Write-Host "Done."
}