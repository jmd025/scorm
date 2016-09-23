@echo off
set dest_folder=%~dp0

if not "%1"=="" (
	set dest_folder=%1
)

if exist %dest_folder% (
	if not exist %dest_folder%\NUL (
		set dest_folder=%~dp1
	)
)

cd /d %dest_folder%

set item="common","extend","unique","vocab","adlcp_v1p3.xsd","adlnav_v1p3.xsd","adlseq_v1p3.xsd","bdlcp_rootv1p2.xsd","courseMetadata.xml","datatypes.dtd","imscp_v1p1.xsd","imsmanifest.xml","imsss_v1p0.xsd","imsss_v1p0auxresource.xsd","imsss_v1p0control.xsd","imsss_v1p0delivery.xsd","imsss_v1p0limit.xsd","imsss_v1p0objective.xsd","imsss_v1p0random.xsd","imsss_v1p0rollup.xsd","imsss_v1p0seqrule.xsd","imsss_v1p0util.xsd","lom.xsd","lomCustom.xsd","lomLoose.xsd","lomStrict.xsd","xml.xsd","XMLSchema.dtd","adlcp_rootv1p2.xsd","ims_xml.xsd","imscp_rootv1p1p2.xsd","imsmd_rootv1p2p1.xsd"

For %%i in (%item%) do del /f /q /s %%i & rd /q /s %%i

echo ----------------------
echo  Finished clean
echo ----------------------
ping 127.0.0.1 > NUL