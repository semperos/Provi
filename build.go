package main

import "fmt"
import "strings"
import "os"
import "net/http"
import "io/ioutil"
import "log"

func exists(path string) (bool, error) {
	_, err := os.Stat(path)
	if err == nil {
		return true, nil
	}
	if os.IsNotExist(err) {
		return false, nil
	}
	return false, err
}

func doesFileExist(pathname string) bool {
	_, err := os.Stat(pathname)
	if err != nil {
		if os.IsExist(err) {
			return true
		} else if os.IsNotExist(err) {
			return false
		} else {
			fmt.Printf("Unrecoverable error has occurred.\n")
			log.Fatal(err)
		}
	}
	return true
}

func downloadJarFile(jarUrl string, jarFilePath string) {
	if doesFileExist(jarFilePath) {
		fmt.Printf("Keeping local %s\n", jarFilePath)
	} else {
		fmt.Printf("Grabbing %s\n", jarUrl)
		resp, err := http.Get(jarUrl)
		if err != nil {
			log.Fatal(fmt.Sprintf("Failed to download %s", jarUrl))
		} else if resp.StatusCode != 200 {
			log.Fatal(fmt.Sprintf("Download of %s returned non-2xx status. ", resp.Request.URL), resp)
		} else {
			fmt.Printf("Reading %v\n", jarUrl)
			defer resp.Body.Close()
			body, err := ioutil.ReadAll(resp.Body)
			if err != nil {
				log.Fatal(fmt.Sprintf("Failed to read %s\n", jarUrl))
			} else {
				err := ioutil.WriteFile(jarFilePath, body, 0755)
				if err != nil {
					log.Fatal(fmt.Sprintf("Failed to write %s\n", jarFilePath))
				} else {
					fmt.Printf("Wrote %s.\n", jarFilePath)
				}
			}
		}
	}
}

// func fmt.Sprintf(formatString, replacements...)
// func strings.Replace(s, old, new string, n int) string
func formatGroupPath(s string) string {
	return strings.Replace(s, ".", "/", -1)
}

func main() {
	fmt.Printf("Pulling in JAR dependencies for Provi.\n")
	seleniumGroup := "org.seleniumhq.selenium"
	seleniumVersion := "2.44.0"
	jarDeps := [39]map[string]string{
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-api",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-chrome-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-firefox-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-htmlunit-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-ie-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-java",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-remote-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-safari-driver",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-server",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    seleniumGroup,
			"artifactId": "selenium-support",
			"version":    seleniumVersion,
		},
		map[string]string{
			"groupId":    "cglib",
			"artifactId": "cglib-nodep",
			"version":    "2.1_3",
		},
		map[string]string{
			"groupId":    "commons-codec",
			"artifactId": "commons-codec",
			"version":    "1.6",
		},
		map[string]string{
			"groupId":    "commons-collections",
			"artifactId": "commons-collections",
			"version":    "3.2.1",
		},
		map[string]string{
			"groupId":    "org.apache.commons",
			"artifactId": "commons-exec",
			"version":    "1.1",
		},
		map[string]string{
			"groupId":    "commons-io",
			"artifactId": "commons-io",
			"version":    "2.4",
		},
		map[string]string{
			"groupId":    "org.apache.commons",
			"artifactId": "commons-lang3",
			"version":    "3.3.2",
		},
		map[string]string{
			"groupId":    "commons-logging",
			"artifactId": "commons-logging",
			"version":    "1.1.3",
		},
		map[string]string{
			"groupId":    "net.sourceforge.cssparser",
			"artifactId": "cssparser",
			"version":    "0.9.14",
		},
		map[string]string{
			"groupId":    "com.google.code.gson",
			"artifactId": "gson",
			"version":    "2.3",
		},
		map[string]string{
			"groupId":    "com.google.guava",
			"artifactId": "guava",
			"version":    "18.0",
		},
		map[string]string{
			"groupId":    "net.sourceforge.htmlunit",
			"artifactId": "htmlunit",
			"version":    "2.15",
		},
		map[string]string{
			"groupId":    "net.sourceforge.htmlunit",
			"artifactId": "htmlunit-core-js",
			"version":    "2.15",
		},
		map[string]string{
			"groupId":    "org.apache.httpcomponents",
			"artifactId": "httpclient",
			"version":    "4.3.4",
		},
		map[string]string{
			"groupId":    "org.apache.httpcomponents",
			"artifactId": "httpcore",
			"version":    "4.3.2",
		},
		map[string]string{
			"groupId":    "org.apache.httpcomponents",
			"artifactId": "httpmime",
			"version":    "4.3.3",
		},
		map[string]string{
			"groupId":    "org.eclipse.jetty",
			"artifactId": "jetty-http",
			"version":    "8.1.15.v20140411",
		},
		map[string]string{
			"groupId":    "org.eclipse.jetty",
			"artifactId": "jetty-io",
			"version":    "8.1.15.v20140411",
		},
		map[string]string{
			"groupId":    "org.eclipse.jetty",
			"artifactId": "jetty-util",
			"version":    "8.1.15.v20140411",
		},
		map[string]string{
			"groupId":    "org.eclipse.jetty",
			"artifactId": "jetty-websocket",
			"version":    "8.1.15.v20140411",
		},
		map[string]string{
			"groupId":    "net.java.dev.jna",
			"artifactId": "jna",
			"version":    "3.4.0",
		},
		map[string]string{
			"groupId":    "net.sourceforge.nekohtml",
			"artifactId": "nekohtml",
			"version":    "1.9.21",
		},
		map[string]string{
			"groupId":    "io.netty",
			"artifactId": "netty",
			"version":    "3.5.2.Final",
		},
		map[string]string{
			"groupId":    "net.java.dev.jna",
			"artifactId": "platform",
			"version":    "3.4.0",
		},
		map[string]string{
			"groupId":    "org.w3c.css",
			"artifactId": "sac",
			"version":    "1.3",
		},
		map[string]string{
			"groupId":    "xalan",
			"artifactId": "serializer",
			"version":    "2.7.1",
		},
		map[string]string{
			"groupId":    "org.webbitserver",
			"artifactId": "webbit",
			"version":    "0.4.14",
		},
		map[string]string{
			"groupId":    "xalan",
			"artifactId": "xalan",
			"version":    "2.7.1",
		},
		map[string]string{
			"groupId":    "xerces",
			"artifactId": "xercesImpl",
			"version":    "2.11.0",
		},
		map[string]string{
			"groupId":    "xml-apis",
			"artifactId": "xml-apis",
			"version":    "1.4.01",
		},
	}
	for _, dep := range jarDeps {
		groupPath := formatGroupPath(dep["groupId"])
		artifactId := dep["artifactId"]
		version := dep["version"]
		jarUrl := fmt.Sprintf("https://repo1.maven.org/maven2/%s/%s/%s/%s-%s.jar",
			groupPath, artifactId, version, artifactId, version)
		jarFilePath := fmt.Sprintf("./languages/lib/%s-%s.jar", artifactId, version)
		downloadJarFile(jarUrl, jarFilePath)
	}
}
