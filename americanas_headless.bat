@echo off
cd <PROJECT-PATH>
call robot -d Results/Batch -i E2ETest -v BROWSER:headlessfirefox Tests/Americanas-Win.robot