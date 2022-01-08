Rem Get current folder name
for %%I in (.) do set CurrDirName=%%~nxI
echo %CurrDirName%

Rem go up one folder
cd ../

Rem Create Venv
python -m venv %CurrDirName%

Rem activate environment
cd %cd%\%CurrDirName%
CALL Scripts\activate.bat
Rem Install requirements
pip install -r requirements.txt
timeout 30