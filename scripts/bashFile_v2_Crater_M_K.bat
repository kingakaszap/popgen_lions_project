@echo off
cd "C:\Users\Bello\Desktop\BEC_MA3\Genetique_et_dynamique_des_pop\Project\Project\Crater_lion_genomics_code\Crater_lion_genomics-main\2_Simulations_Slim"

@echo off

for %%m in (0 1 5 10) do (
    for %%k in (50 100) do (
        for /L %%i in (1,1,40) do (
            echo Running replicate %%i with m_rate=%%m and kc_7=%%k
            "C:\msys64\mingw64\bin\slim.exe" ^
                -d "replicate=%%i" ^
                -d "seed=%%i" ^
                -d "m_rate=%%m" ^
                -d "kc_7=%%k" ^
                GSE_Crater_M_K.slim
        )
    )
)
