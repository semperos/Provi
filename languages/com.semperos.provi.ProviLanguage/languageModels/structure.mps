<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:2e4eafc5-0f9f-41f6-a538-0db4dc2c00de(com.semperos.provi.ProviLanguage.structure)" version="3">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="4fqr" modelUID="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="q8gp" modelUID="r:2e4eafc5-0f9f-41f6-a538-0db4dc2c00de(com.semperos.provi.ProviLanguage.structure)" version="3" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6997941039743645272" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Session" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="6997941039743645273" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="6997941039744218408" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="4fqr.4666195181811081429" resolveInfo="IMainClass" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6997941039743659187" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="driver" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6997941039743659253" resolveInfo="Driver" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7876429446457829375" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="actions" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7876429446457784589" resolveInfo="DriverAction" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6997941039743659253" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Driver" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6997941039743659283" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FirefoxDriver" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Firefox" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="6997941039743659253" resolveInfo="Driver" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7876429446457784589" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DriverAction" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7876429446457829267" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7876429446457829303" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Navigate" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="Go to..." />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Navigate the browser to a URL" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7876429446457784589" resolveInfo="DriverAction" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7876429446458041002" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="destination" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1070475926800" resolveInfo="StringLiteral" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7876429446458265532" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Quit" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Close the browser" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="7876429446457784589" resolveInfo="DriverAction" />
  </root>
</model>

