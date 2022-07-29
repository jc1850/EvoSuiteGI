@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gin startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and GIN_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gin.jar;%APP_HOME%\lib\InMemoryJavaCompiler-1.4.0-SNAPSHOT-ginfork-20180801.jar;%APP_HOME%\lib\javacg-0.1-SNAPSHOT-static.jar;%APP_HOME%\lib\starts-core-1.3.jar;%APP_HOME%\lib\maven-plugin-testing-tools-1.3.jar;%APP_HOME%\lib\maven-invoker-3.1.0.jar;%APP_HOME%\lib\maven-surefire-plugin-2.19.1.jar;%APP_HOME%\lib\maven-surefire-common-2.19.1.jar;%APP_HOME%\lib\maven-toolchain-2.2.1.jar;%APP_HOME%\lib\maven-core-3.6.3.jar;%APP_HOME%\lib\maven-shared-utils-3.3.3.jar;%APP_HOME%\lib\commons-io-2.8.0.jar;%APP_HOME%\lib\yasgl-1.2.jar;%APP_HOME%\lib\guice-4.2.1-no_aop.jar;%APP_HOME%\lib\guava-30.1-jre.jar;%APP_HOME%\lib\maven-project-2.2.1.jar;%APP_HOME%\lib\maven-plugin-descriptor-2.2.1.jar;%APP_HOME%\lib\maven-profile-2.2.1.jar;%APP_HOME%\lib\maven-artifact-manager-2.2.1.jar;%APP_HOME%\lib\maven-plugin-registry-2.2.1.jar;%APP_HOME%\lib\plexus-container-default-1.0-alpha-9-stable-1.jar;%APP_HOME%\lib\junit-4.13.1.jar;%APP_HOME%\lib\hamcrest-all-1.3.jar;%APP_HOME%\lib\javaparser-core-3.24.0.jar;%APP_HOME%\lib\commons-math3-3.6.1.jar;%APP_HOME%\lib\commons-rng-simple-1.3.jar;%APP_HOME%\lib\commons-rng-core-1.3.jar;%APP_HOME%\lib\commons-rng-sampling-1.3.jar;%APP_HOME%\lib\commons-rng-client-api-1.3.jar;%APP_HOME%\lib\opencsv-5.3.jar;%APP_HOME%\lib\cli-parser-1.1.5.jar;%APP_HOME%\lib\tinylog-1.3.6.jar;%APP_HOME%\lib\org.ekstazi.core-5.3.0.jar;%APP_HOME%\lib\commons-text-1.9.jar;%APP_HOME%\lib\maven-plugin-api-3.6.3.jar;%APP_HOME%\lib\maven-resolver-provider-3.6.3.jar;%APP_HOME%\lib\maven-model-builder-3.6.3.jar;%APP_HOME%\lib\maven-plugin-annotations-3.3.jar;%APP_HOME%\lib\maven-artifact-3.6.3.jar;%APP_HOME%\lib\commons-lang3-3.11.jar;%APP_HOME%\lib\gradle-tooling-api-4.3.jar;%APP_HOME%\lib\zt-zip-1.14.jar;%APP_HOME%\lib\zt-exec-1.12.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\slf4j-simple-2.0.0-alpha1.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.5.0.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\commons-beanutils-1.9.4.jar;%APP_HOME%\lib\commons-collections4-4.4.jar;%APP_HOME%\lib\jgrapht-ext-0.9.2.jar;%APP_HOME%\lib\maven-settings-builder-3.6.3.jar;%APP_HOME%\lib\org.eclipse.sisu.plexus-0.3.4.jar;%APP_HOME%\lib\cdi-api-1.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\maven-model-3.6.3.jar;%APP_HOME%\lib\maven-settings-3.6.3.jar;%APP_HOME%\lib\maven-builder-support-3.6.3.jar;%APP_HOME%\lib\maven-repository-metadata-3.6.3.jar;%APP_HOME%\lib\maven-resolver-impl-1.4.1.jar;%APP_HOME%\lib\maven-resolver-spi-1.4.1.jar;%APP_HOME%\lib\maven-resolver-util-1.4.1.jar;%APP_HOME%\lib\maven-resolver-api-1.4.1.jar;%APP_HOME%\lib\org.eclipse.sisu.inject-0.3.4.jar;%APP_HOME%\lib\plexus-sec-dispatcher-1.4.jar;%APP_HOME%\lib\wagon-provider-api-1.0-beta-6.jar;%APP_HOME%\lib\plexus-utils-3.2.1.jar;%APP_HOME%\lib\plexus-classworlds-2.6.0.jar;%APP_HOME%\lib\plexus-component-annotations-2.1.0.jar;%APP_HOME%\lib\slf4j-api-2.0.0-alpha1.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\surefire-booter-2.19.1.jar;%APP_HOME%\lib\surefire-api-2.19.1.jar;%APP_HOME%\lib\plexus-interpolation-1.25.jar;%APP_HOME%\lib\jgrapht-core-0.9.2.jar;%APP_HOME%\lib\jgraphx-2.0.0.1.jar;%APP_HOME%\lib\jgraph-5.13.0.0.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\classworlds-1.1-alpha-2.jar;%APP_HOME%\lib\plexus-cipher-1.4.jar;%APP_HOME%\lib\jsr250-api-1.0.jar;%APP_HOME%\lib\backport-util-concurrent-3.1.jar


@rem Execute gin
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GIN_OPTS%  -classpath "%CLASSPATH%" gin.LocalSearch %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GIN_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GIN_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
