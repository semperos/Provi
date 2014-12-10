<?xml version="1.0" encoding="UTF-8"?>
<language namespace="com.semperos.provi.ProviLanguage" uuid="e5cc6642-c8b4-497d-9933-5a87e202891d">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="languageModels" />
    </modelRoot>
    <modelRoot contentPath="/Users/daniegregiore/MPSProjects/Provi/languages/lib" type="java_classes">
      <sourceRoot location="selenium-java-2.44.0.jar" />
      <sourceRoot location="selenium-firefox-driver-2.44.0.jar" />
      <sourceRoot location="selenium-remote-driver-2.44.0.jar" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator name="" generatorUID="com.semperos.provi.ProviLanguage#6997941039743639999" uuid="28bf3a5a-9c07-4ffd-b1b5-a19c7e981923">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
        <modelRoot contentPath="${module}" type="java_classes" />
        <modelRoot contentPath="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-java-2.44.0.jar!" type="java_classes" />
        <modelRoot contentPath="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-firefox-driver-2.44.0.jar!" type="java_classes" />
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
        <dependency reexport="false">e5cc6642-c8b4-497d-9933-5a87e202891d(com.semperos.provi.ProviLanguage)</dependency>
        <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>e5cc6642-c8b4-497d-9933-5a87e202891d(com.semperos.provi.ProviLanguage)</usedLanguage>
        <usedLanguage>f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)</usedLanguage>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <stubModelEntries>
    <stubModelEntry path="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-remote-driver-2.44.0.jar" />
    <stubModelEntry path="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-java-2.44.0.jar" />
    <stubModelEntry path="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-firefox-driver-2.44.0.jar" />
    <stubModelEntry path="/Users/daniegregiore/MPSProjects/Provi/languages/lib/selenium-server-2.44.0.jar" />
  </stubModelEntries>
  <sourcePath />
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <extendedLanguages>
    <extendedLanguage>4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
  </extendedLanguages>
</language>

