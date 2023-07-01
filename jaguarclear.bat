@echo off

    echo Deleting all old jaguar files

    for %%D in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
        if exist "%%D:\" (
            pushd "%%D:\"
            for /r %%G in (*jaguar.bin) do (
                del "%%G" /q
            )
            popd
        )
    )
    timeout /5
    echo All files files deleted successfully.
    echo.
    pause
