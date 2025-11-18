@echo off
cd "C:\Users\Bello\Desktop\BEC_MA3\Genetique_et_dynamique_des_pop\Project\Project\Crater_lion_genomics_code\Crater_lion_genomics-main\2_Simulations_Slim"

for /L %%i in (1,1,40) do (
    echo Running replicate %%i
    "C:\msys64\mingw64\bin\slim.exe" -d "replicate=%%i" -d "seed=%%i" GSE_pop_PROJECT_GENPOP_v3.slim
)
