/*
Run this script on:

(localdb)\v11.0.CSETWeb10120    -  This database will be modified

to synchronize it with:

(localdb)\v11.0.CSETWeb10200

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.5.1.18536 from Red Gate Software Ltd at 4/14/2021 12:29:54 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_SETS]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]

PRINT(N'Drop constraint FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT from [dbo].[FINANCIAL_REQUIREMENTS]')
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] NOCHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_REQUIREMENT from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_Parameter_Requirements_NEW_REQUIREMENT from [dbo].[PARAMETER_REQUIREMENTS]')
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_LEVELS]')
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_QUESTIONS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_REF_LIBRARY_PATH]

PRINT(N'Update rows in [dbo].[MATURITY_REFERENCE_TEXT]')
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference [ADM:SG1.SP1] </strong>Inventory assets</p>
<p class= "p1">An acquirer must be able to identify its high-value assets, document them, and establish their value. This
    is done in order to develop strategies for protecting and sustaining assets commensurate with their value to
    services. The term high-value assets refers both to assets that are internal to the assessed acquirer and those that
    are owned, maintained, provided, etc. by external entities.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-18 </em>Revision 1, &ldquo;Guide for Developing Security Plans for
    Federal Information Systems,&rdquo; 2-3.</p>
<p class= "p1">NIST CSF References: ID.AM-1, ID.AM-2, ID.AM-4</p>' WHERE [Mat_Question_Id] = 1203 AND [Sequence] = 2
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[CTRL:SG1.SP1] </strong>Define control objectives</p>
<p class= "p1">Define and document control objectives that result from management directives and guidelines. Affinity
    analysis of directives and guidelines may be useful in identifying categories of control objectives.</p>
<p class= "p1">These are examples of control objectives:</p>
<ul>
    <li>prevent unauthorized use of purchase orders</li>
    <li>ensure adequate supplies of materials</li>
    <li>establish an enterprise architecture for information technology</li>
    <li>all outside support personnel are identified</li>
    <li>identify and assess risks that may cause material misstatements of financial records</li>
    <li>educate and train staff</li>
    <li>ensure the confidentiality and integrity of customers&apos; payment information</li>
    <li>establish a compliance program</li>
</ul>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-53 Revision 4, </em>&ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, 2.1 Multitiered Risk Management.</p>
<p class= "p1">The selection and specification of security controls for an information system is accomplished as part of
    an organization-wide information security program for the management of risk --that is, the risk to organizational
    operations and assets, individuals, other organizations, and the Nation associated with the operation of information
    systems. <em>Risk-based approaches to security control selection and specification</em><em> consider effectiveness,
        efficiency, and constraints due to applicable federal laws, Executive Orders, directives, policies, regulations,
        standards, and guidelines.</em></p>
<p class= "p1">NIST CSF References: ID.BE-5, ID.GV-3</p>' WHERE [Mat_Question_Id] = 1204 AND [Sequence] = 3
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG2.SP1] </strong>Identify Risks Due to External Dependencies.</p>
<p class="p1">Identification of risks due to external dependencies requires an understanding of the actions of the
    associated external entity in the operation, support, or resilience of the organization&apos;s services. External
    entities will be responsible for varying dependencies in the support of the organization&apos;s operations.</p>
<p class="p1"><strong>[RISK:SG1:SP1] </strong>Determine Risk Sources and Categories.</p>
<p class="p1">The sources of risk to assets and services are identified and the categories of risk that are relevant to
    the organization are determined.</p>
<p class="p1">Identifying risk sources helps the organization to determine and categorize the types of operational risk
    that are most likely to affect day-to-day operations and to seed an organization-specific risk taxonomy that can be
    used as a tool for managing risk on a continuous basis as operating conditions change and evolve. The sources of
    risk can be both internal and external to the organization.</p>
<p class="p1">Categorizing operational risks provides the organization a means from which to perform advanced analysis
    and mitigation activities that allow for similar types of risks to be effectively neutralized or contained by
    limited actions by the organization.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1">NIST Special Publication 800-30, &ldquo;Risk Management Guide for Information Technology Systems,&rdquo;
    Section 2.4 Application of Risk Assessments.</p>
<p class="p1"><em>ISO 28000 First Edition, </em>&ldquo;Specifications for security
    management systems for the supply Chain.&rdquo;</p>
<p class="p1">NIST CSF References: ID.BE-1, ID.RA-5, ID.RA-6, ID.SC-1, ID.SC-2, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1210 AND [Sequence] = 9
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG2.SP1] </strong>Identify Risks Due to External Dependencies.</p>
<p class="p1">Identification of risks due to external dependencies requires an understanding of the actions of the
    associated external entity in the operation, support, or resilience of the organization&apos;s services. External
    entities will be responsible for varying dependencies in the support of the organization&apos;s operations.</p>
<p class="p1"><strong>[RISK:SG1:SP1] </strong>Determine Risk Sources and Categories.</p>
<p class="p1">The sources of risk to assets and services are identified and the categories of risk that are relevant to
    the organization are determined.</p>
<p class="p1">Identifying risk sources helps the organization to determine and categorize the types of operational risk
    that are most likely to affect day-to-day operations and to seed an organization-specific risk taxonomy that can be
    used as a tool for managing risk on a continuous basis as operating conditions change and evolve. The sources of
    risk can be both internal and external to the organization.</p>
<p class="p1">Categorizing operational risks provides the organization a means from which to perform advanced analysis
    and mitigation activities that allow for similar types of risks to be effectively neutralized or contained by
    limited actions by the organization.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1">NIST Special Publication 800-30, &ldquo;Risk Management Guide for Information Technology Systems,&rdquo;
    Section 2.4 Application of Risk Assessments.</p>
<p class="p1"><em>ISO 28000 First Edition, </em>&ldquo;Specifications for security
    management systems for the supply Chain.&rdquo;</p>
<p class="p1">NIST CSF References: ID.BE-1, ID.RA-5, ID.RA-6, ID.SC-1, ID.SC-2, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1211 AND [Sequence] = 10
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG2.SP1] </strong>Identify Risks Due to External Dependencies.</p>
<p class="p1">Identification of risks due to external dependencies requires an understanding of the actions of the
    associated external entity in the operation, support, or resilience of the organization&apos;s services. External
    entities will be responsible for varying dependencies in the support of the organization&apos;s operations.</p>
<p class="p1"><strong>[RISK:SG1:SP1] </strong>Determine Risk Sources and Categories.</p>
<p class="p1">The sources of risk to assets and services are identified and the categories of risk that are relevant to
    the organization are determined.</p>
<p class="p1">Identifying risk sources helps the organization to determine and categorize the types of operational risk
    that are most likely to affect day-to-day operations and to seed an organization-specific risk taxonomy that can be
    used as a tool for managing risk on a continuous basis as operating conditions change and evolve. The sources of
    risk can be both internal and external to the organization.</p>
<p class="p1">Categorizing operational risks provides the organization a means from which to perform advanced analysis
    and mitigation activities that allow for similar types of risks to be effectively neutralized or contained by
    limited actions by the organization.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1">NIST Special Publication 800-30, &ldquo;Risk Management Guide for Information Technology Systems,&rdquo;
    Section 2.4 Application of Risk Assessments.</p>
<p class="p1"><em>ISO 28000 First Edition, </em>&ldquo;Specifications for security
    management systems for the supply Chain.&rdquo;</p>
<p class="p1">NIST CSF References: ID.BE-1, ID.RA-5, ID.RA-6, ID.SC-1, ID.SC-2, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1212 AND [Sequence] = 11
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG2.SP1] </strong>Identify Risks Due to External Dependencies.</p>
<p class="p1">Identification of risks due to external dependencies requires an understanding of the actions of the
    associated external entity in the operation, support, or resilience of the organization&apos;s services. External
    entities will be responsible for varying dependencies in the support of the organization&apos;s operations.</p>
<p class="p1"><strong>[RISK:SG1:SP1] </strong>Determine Risk Sources and Categories.</p>
<p class="p1">The sources of risk to assets and services are identified and the categories of risk that are relevant to
    the organization are determined.</p>
<p class="p1">Identifying risk sources helps the organization to determine and categorize the types of operational risk
    that are most likely to affect day-to-day operations and to seed an organization-specific risk taxonomy that can be
    used as a tool for managing risk on a continuous basis as operating conditions change and evolve. The sources of
    risk can be both internal and external to the organization.</p>
<p class="p1">Categorizing operational risks provides the organization a means from which to perform advanced analysis
    and mitigation activities that allow for similar types of risks to be effectively neutralized or contained by
    limited actions by the organization.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1">NIST Special Publication 800-30, &ldquo;Risk Management Guide for Information Technology Systems,&rdquo;
    Section 2.4 Application of Risk Assessments.</p>
<p class="p1"><em>ISO 28000 First Edition, </em>&ldquo;Specifications for security
    management systems for the supply Chain.&rdquo;</p>
<p class="p1">NIST CSF References: ID.BE-1, ID.RA-5, ID.RA-6, ID.SC-1, ID.SC-2, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1213 AND [Sequence] = 12
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[EXD:SG3.SP4] </strong>Formalize Relationships</p>
<p class= "p1">Agreements are often composed from multiple sections or multiple documents, each of which describes some
    aspect of the arrangement and agreement. In all cases, the agreement, regardless of form, should:</p>
<ul>
    <li>be enforceable by the organization</li>
    <li><em>include detailed and complete specifications that must be met by the external entity (see EXD:SG3.SP1 and
            EXD:SG3.SP2)</em></li>
    <li><em>include any required performance standards or work products from the organization</em></li>
    <li>be changed to reflect changes in specifications over the life of the relationship</li>
</ul>
<p class="p1">Subpractices:</p>
<ol>
    <li>Select an agreement type that best fits the performance standards required by the organization and that is
        enforceable if problems arise.</li>
    <li>Properly document the agreement terms, conditions, specifications and other provisions. All agreement provisions
        should be documented in the agreement in language that is unambiguous.</li>
</ol>
<p class= "p1">The agreement <em>should not contain any general exceptions for achieving the resilience specifications
        unless they are carefully considered and negotiated</em>. It may, however, contain scenarios of types of
    unforeseen events for which the external entity is not expected to prepare. Any exceptions granted to resilience
    specifications or scenarios for which the external entity is not required to prepare should be treated as risks
    under EXD:SG2.</p>
<p class= "p1">All agreements should <em>establish and enable procedures for monitoring the performance of external
        entities </em>and inspecting the services or products they deliver to the organization.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-161</em>, &ldquo;Supply Chain Risk Management Practices for Federal
    Information Management Systems and Organizations,&rdquo; Section 1.5 Foundational Practices.</p>
<p class= "p1">Foundational practices are described in NIST standards and guidelines as well as other applicable national
    and international standards and best practices. They include: ensuring that organizations understand the cost and
    scheduling constraints of implementing ICT SCRM; integrating information security requirements into the acquisition
    process; using applicable baseline security controls as one of the sources for security requirements.</p>
<p class= "p1"><em>ISO 27036-2</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; Section 6.1 Agreement Processes.</p>
<p class= "p1"><em>ISO 27036-1</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; Section 5.5 ICT Supply Chain Considerations.</p>
<p class= "p1">NIST CSF References: ID.BE-1, ID.SC-3, PR.AT-3</p>' WHERE [Mat_Question_Id] = 1219 AND [Sequence] = 18
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM References</strong></p>
<p class= "p1"><strong>[EXD:SG3.SP4] </strong>Formalize Relationships</p>
<p class= "p1">Formal agreements should be established with external entities. The agreement content may take different
    forms depending on <em>subcontracting provisions - The external entity&apos;s rights and ability to subcontract
        their obligations under the agreement to others should be included.</em></p>
<p class= "p1"><strong>[EXD:GG2.GP4] </strong>Assign Responsibility</p>
<p class= "p1">Assign responsibility and authority for performing the external dependencies management process,
    developing the work products, and providing the services of the process.</p>
<p class= "p1"><em>Those responsible for services and assets are involved in identifying and prioritizing external
        dependencies and establishing resilience specifications that external entities must fulfill. Formal agreements
        identify external entity actions, </em>including ensuring continuity of operations during times of stress.</p>
<p class= "p1">Subpractices:</p>
<p class= "p1">1. Assign responsibility and authority for performing the process.</p>
<p class= "p1">The organization must ensure that responsibility and authority <em>extends to all external entities and to
        any entities with whom the external entity has contracted to provide services or products in support of the
        external entity&apos;s formal agreement with the organization.</em></p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-161, </em>&ldquo;Supply Chain Risk Management Practices for Federal
    Information Management Systems and Organizations,&rdquo; Sections 3.3.1 and 3.3.2.</p>
<p class= "p1">System integrators are those entities that provide customized services to the acquirer including custom
    development, test, operations, and maintenance. Because of the level of visibility that can be obtained in the
    relationship with the system integrator, <em>the acquirer has the ability to require rigorous supplier acceptance
        criteria as well as any relevant countermeasures to address identified or potential risks.</em></p>
<p class= "p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems&rdquo;, Section 4.7.1 Acquirer - Programmatic Activities.</p>
<ol start="9" type="a">
    <li><em>Require the integrator to monitor supplier activities</em>, with notification to supplier, to detect and
        assess threats or attempts to gain, or exploit exposure of, access to elements, supply chain processes, or
        supply chain actors.</li>
    <li><em>Require that reviewers are qualified to identify weaknesses and vulnerabilities </em>in the supply chain or
        integrator SCRM processes and procedures.</li>
</ol>
<p class= "p1"><em>ISO 27036-1</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; 5.3 Information Security Risks in Supplier Relationships and Associated Threats.</p>
<p class= "p1">NIST CSF References: ID.SC-3</p>' WHERE [Mat_Question_Id] = 1220 AND [Sequence] = 19
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM References </strong></p>
<p class= "p1"><strong>[EXD:SG3.SP4] </strong>Formalize Relationships</p>
<p class= "p1">Supplier agreement should define obligations of the external entity to protect the acquirer&apos;s assets
    and report material incidents that have the potential to impact those assets. Those obligations should include
    requirements for the notification of the acquirer in the event of disruptions and security incidents such as
    breaches and disclosures.</p>
<p class= "p1"><strong>[IMC:GG2.GP4] </strong>Assign Responsibility</p>
<p class= "p1">Assign responsibility and authority for performing the incident management and control process, developing
    the work products, and providing the services of the process.</p>
<p class= "p1">Specific practice IMC:SG1.SP1 indicates that the incident management plan should define the roles and
    responsibilities necessary to carry out the plan, as well as documenting commitments from those responsible.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&quot;, SA-12(12) | Inter-Organizational Agreements, SA-12(13) Supply Chain
    Protection | Critical Information System Components.</p>
<p class= "p1">The organization establishes inter-organizational agreements and procedures with entities involved in the
    supply chain for the information system, system component, or information system service.</p>
<p class= "p1"><u>Supplemental Guidance</u>: The <em>establishment of inter-organizational agreements and procedures
        provides for notification of supply chain compromises</em>. Early notification of supply chain compromises that
    can potentially adversely affect or have adversely affected organizational information systems, including critical
    system components, is essential for organizations to provide appropriate responses to such incidents.</p>
<p class= "p1"><em>NIST Special Publication 800-161</em>, &ldquo;Supply Chain Risk Management Practices for Federal
    Information Management Systems and Organizations,&rdquo; Section 2.5 Foundational Practices.</p>
<p class= "p1">NIST CSF References: ID.SC-3</p>' WHERE [Mat_Question_Id] = 1221 AND [Sequence] = 20
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[IMC:GG2.GP7] </strong>Identify and Involve Relevant Stakeholders</p>
<p class="p1">Assign responsibility and authority for performing the incident management and control process, developing
    the work products, and providing the services of the process.</p>
<p class="p1">Stakeholders (including external entities) may be involved in various tasks in the incident management and
    control process, such as</p>
<ul>
    <li>detecting events and incidents</li>
    <li>planning for incident handling, management, and response</li>
    <li>making commitments to process plans and activities</li>
    <li>collecting, documenting, and preserving event and incident evidence</li>
    <li>analyzing events and incidents</li>
    <li>declaring incidents</li>
    <li>responding to incidents, including participating on incident response teams</li>
    <li>communicating events and incidents and the status of incidents as they move through the incident life cycle</li>
    <li>escalating incidents</li>
    <li>coordinating process activities</li>
    <li>reviewing and appraising the effectiveness of process activities</li>
    <li>performing post-incident review and improvement processes</li>
</ul>
<p class="p1"><strong>[SC:GG2.GP4] </strong>Assign Responsibility</p>
<p class="p1">Assign responsibility and authority for performing the service continuity process, developing the work
    products, and providing the services of the process.</p>
<p class="p1">Subpractices</p>
<ol>
    <li>Assign responsibility and authority for performing the process.</li>
    <li>Assign responsibility and authority for performing the specific tasks of the process, such as: <em>developing
            and implementing contractual instruments (including service level agreements) with external entities to
            establish responsibility and authority for performing process tasks on outsourced functions.</em></li>
</ol>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CP-4 Contingency Plan Testing.</p>
<p class="p1">The <em>organization coordinates contingency plan testing with organizational elements responsible for
        related plans</em>.</p>
<p class="p1"><u>Supplemental Guidance</u>: Plans related to contingency plans for organizational information systems
    include, for example, Business Continuity Plans, Disaster Recovery Plans, Continuity of Operations Plans, Crisis
    Communications Plans, Critical Infrastructure Plans, Cyber Incident Response Plans, and Occupant Emergency Plans.
    This control enhancement does not require organizations to create organizational elements to handle related plans or
    to align such elements with specific plans. It does require, however, that if such organizational elements are
    responsible for related plans, organizations should coordinate with those elements. Related controls: IR-8, PM-8.
</p>
<p class="p1">Federal Financial Institutions Examination Council (FFIEC) <em>Business Continuity Planning IT Examination
        Handbook</em>, Testing Strategies, 16.</p>
<p class="p1">The testing policy should include enterprise-wide testing strategies that establish expectations for
    individual business lines. Business lines include all internal and external supporting functions, such as IT and
    facilities management. The testing strategy should include the following:</p>
<ul>
    <li>Expectations for business lines and support functions to demonstrate the achievement of business continuity test
        objectives consistent with the BIA and risk assessment;</li>
    <li>Expectations for testing internal and external interdependencies; and</li>
</ul>
<p class="p1"><em>ITIL Service Design</em>, The Stationery Office, 2011, Best Management Practice. Section 4.8.5.5.
    &ldquo;Sourcing Structures,&rdquo; 219-220. </p>
<p class="p1">NIST CSF References: ID.SC-3, ID.SC-5</p>' WHERE [Mat_Question_Id] = 1224 AND [Sequence] = 23
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[EXD:SG2.SP1] </strong>Identify and Assess Risks Due to External Dependencies</p>
<p class="p1">Risks associated with external dependencies are periodically identified and assessed.</p>
<p class="p1">Risks due to external dependencies must be identified and assessed so that they can be effectively managed
    to maintain the resilience of the organization&apos;s high-value services.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; Section 4.1, Uniquely Identify Supply Chain Elements, Processes, and Actors.</p>
<p class="p1">Knowing who and what is in an enterprise&apos;s supply chain is critical to gain visibility into what is
    happening within it, as well as <em>monitoring and identifying high-risk events and activities</em>. Without
    reasonable visibility and traceability into supply chain, e.g., elements, processes, and actors, it is impossible to
    understand and therefore manage risk, and to reduce the likelihood of an adverse event.</p>
<p class="p1"><em>ITIL Service
        Design</em>, The Stationery Office, 2011, Best Management Practice. Section 4.8.5.4, &ldquo;Establishment of New
    Suppliers and Contracts,&rdquo; 218-219.</p>
<p class="p1"><em>ISO 27036-1</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; 5.3 Information Security Risks in Supplier Relationships and Associated Threats.</p>
<p class="p1"><em>ISO 27036-2</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; Section 6.3.4 Risk Management Process.</p>
<p class="p1">NIST CSF References: ID.SC-1, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1237 AND [Sequence] = 36
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[RISK:SG5.SP2] </strong>Implement Risk Strategies</p>
<p class="p1">Risk strategies and mitigation plans are implemented and monitored.</p>
<p class="p1">Effective management and control of risk requires the organization to monitor risk and the status of risk
    strategies. Because the operational environment is constantly changing, risks identified and addressed may need to
    be revisited, and a new disposition and strategy may need to be developed.</p>
<p class="p1"><strong>[EXD:SG4.SP1] </strong>Monitor External Entity Performance</p>
<p class="p1">The performance of external entity relationship management and governance is monitored against agreement
    terms and specifications. Utilization of a repository to store external dependency information facilitates the
    management of the overall external dependencies management program and the relationship management and governance
    process, in particular.</p>
<p class="p1">Typical work products</p>
<ol>
    <li>Monitoring of reports on external entities</li>
    <li>Relationship management databases showing current performance monitoring information</li>
    <li>Inspection reports on external entity deliverables</li>
</ol>
<p class="p1">
    Subpractices
</p>
<p class="p1">1. Establish procedures and responsibility for monitoring external entity performance and inspecting any
    external entity deliverables. Procedures should be consistent with the agreement between the organization and the
    external entity and should be based on verifying that the external entity is achieving the specifications as defined
    in the agreement.</p>
<p class="p1">2. Meet periodically with external entity representatives to review the result of monitoring activities,
    the specifications in the agreement, and any changes in either the organization or the external entity that might
    impact performance</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, SA-12(11) Supply Chain Protection | Penetration Testing / Analysis of
    Elements, Processes, and Actors.</p>
<p class="p1"><em>The organization employs . . . organizational analysis, independent third- party analysis,
        organizational penetration testing, independent third-party penetration testing of supply chain elements,
        processes, and actors associated with the information system, system component, or information system
        service.</em></p>
<p class="p1">Supplemental Guidance: This control enhancement addresses analysis and/or testing of the supply chain, not
    just delivered items. Supply chain elements are information technology products or product components that contain
    programmable logic and that are critically important to information system functions. Supply chain processes
    include, for example: (i) hardware, software, and firmware development processes; (ii) shipping/ handling
    procedures; (iii) personnel and physical security programs; (iv) configuration management tools/measures to maintain
    provenance; or (v) any other programs, processes, or procedures associated with the production/distribution of
    supply chain elements. Supply chain actors are individuals with specific roles and responsibilities in the supply
    chain. The evidence generated during analyses and testing of supply chain elements, processes, and actors is
    documented and used to inform organizational risk management activities and decisions.</p>
<p class="p1"><em>NIST Special Publication 800-137</em>, &ldquo;Information Security Continuous Monitoring (ISCM) for
    Federal Information Systems and Organizations.&rdquo;</p>
<p class="p1">NIST CSF References: ID.RM-1, ID.SC-1, ID.SC-2, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1241 AND [Sequence] = 40
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[EXD:SG4.SP2] </strong>Correct External Entity Performance</p>
<p class="p1">The agreement should be reviewed to identify appropriate and allowable corrective actions for
    consideration. The various alternatives should be evaluated based on their likelihood to succeed in correcting the
    situation and mitigating any associated risks. It may be valuable and appropriate to include the external entity in
    the discussion and consideration of alternatives, especially if both the organization and the external entity desire
    to continue the relationship.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; Section 4.1.6 Acquirer - Verification and Validation Activities.</p>
<p class="p1"><em>Perform audits on unique . . . deficiencies within acquirer system/environment and report up the
        supply chain for corrective action.</em></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, SA-12(15) Supply Chain Protection | Processes to Address Weaknesses or
    Deficiencies.</p>
<p class="p1">The <em>organization establishes a process to address weaknesses or deficiencies in supply chain
    </em>elements identified during independent or organizational assessments of such elements.</p>
<p class="p1"><u>Supplemental Guidance</u>: Evidence generated during independent or organizational assessments of
    supply chain elements (e.g., penetration testing, audits, verification/ validation activities) is documented and
    used in <em>follow-on processes implemented by organizations to respond to the risks related to the identified
        weaknesses and deficiencies</em>. Supply chain elements include, for example, supplier development processes and
    supplier distribution systems.</p>
<p class="p1"><em>ISO 27036-2</em>,&ldquo;IT-Security Techniques-Information Security for Supplier Relationships,&rdquo;
    7.4.3 Activities. </p>
<p class="p1">NIST CSF References: ID.SC-4</p>' WHERE [Mat_Question_Id] = 1256 AND [Sequence] = 43
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[EXD:SG4.SP2] </strong>Correct External Entity Performance</p>
<p class= "p1">Implementing corrective actions is a necessary part of managing external entity performance. The objective
    of any corrective action is to minimize the disruption to the organization&apos;s operation or the risk of any such
    disruption based on external dependencies. The range of corrective actions should be established in the agreement
    with the external entity, and an evaluation of alternatives should be completed prior to implementing corrective
    actions.</p>
<p class= "p1"><em>Corrective actions should be documented in accordance with specifications in the agreement and used to
        inform and improve ongoing monitoring of the external entity.</em></p>
<p class= "p1">Typical work products</p>
<ul>
    <li>Corrective action reports or documentation</li>
    <li>Correspondence with an external entity documenting corrective actions </li>
</ul>
<p class= "p1">Subpractices</p>
<ol>
    <li>Evaluate alternative corrective actions to select the optimal corrective action.</li>
    <li>The agreement should be reviewed to identify appropriate and allowable corrective actions for consideration. The
        various alternatives should be evaluated based on their likelihood to succeed in correcting the situation and
        mitigating any associated risks.</li>
    <li>It may be valuable and appropriate to include the external entity in the discussion and consideration of
        alternatives, especially if both the organization and the external entity desire to continue the relationship.
    </li>
    <li>Communicate with the external entity to review selected corrective actions.</li>
    <li>Communication provisions in the agreement should be followed to formalize the communication.</li>
    <li>Implement selected corrective actions.</li>
    <li><em>Monitor as appropriate to ensure that issues are remedied in a timely manner.</em></li>
    <li>Update the agreement with the external entity as required.</li>
</ol>
<p class= "p1"> </p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-137</em>, &ldquo;Information Security Continuous Monitoring (ISCM) for
    Federal Information Systems and Organizations,&rdquo; Section 3.5 Respond to Findings.</p>
<p class= "p1">Response strategies may be implemented over a period of time, documenting implementation plans in the
    system&apos;s Plan of Action and Milestones (POA&amp;M). As weaknesses are found, response actions are evaluated and
    any mitigation actions are conducted immediately or are added to the POA&amp;M. Other key system documents are
    updated accordingly. Security controls that are modified, enhanced, or added as part of the response step of the
    <em>continuous monitoring process are assessed to ensure that the new or revised controls are effective in their
        implementations</em>. Going forward, new or revised controls are included in the overall continuous monitoring
    strategy.
</p>
<p class= "p1"><em>NIST Special Publication 800-55</em>, &ldquo;Performance Measurement Guide for Information
    Security.&rdquo; </p>
<p class= "p1">NIST CSF References: ID.SC-4</p>' WHERE [Mat_Question_Id] = 1257 AND [Sequence] = 44
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG3.SP2] </strong>Manage Changes to Assets and Inventory</p>
<p class="p1">Organizational and operational conditions are continually changing. These changes result in daily changes
    to the high-value assets that help the organization&apos;s services achieve their missions. For example, the
    following are common organizational events that would affect high-value assets:</p>
<ul>
    <li>staff changes, including the addition of new staff members (either internally or externally), the transfer of
        existing staff members from one organizational unit to another, and the termination of staff members</li>
    <li>changes to information such as the creation, alteration, or deletion of paper and electronic records, files, and
        databases</li>
    <li>technology refresh, such as the addition of new technical components, changes to existing technical components,
        and the elimination or retirement of existing technology</li>
    <li>facilities changes, such as the addition of new facilities (whether owned by the organization or an external
        business partner), alteration of existing facilities, and the retirement of a facility</li>
</ul>
<p class="p1">Besides the addition of new assets, this practice also addresses changes to the description or composition
    of an asset. For example, if an asset takes an additional form (such as when a paper asset is imaged or an
    electronic asset is printed), this must be documented as part of the asset description to ensure that current
    protection and sustainment strategies align properly and provide coverage across a range of asset media. Assets may
    also change ownership, custodianship, location, or value --all of which must be updated to ensure a current asset
    profile and inventory.</p>
<p class="p1">In addition, whenever assets are eliminated (for example, a server is retired or vital staff members leave
    the organization), owners of those assets must ensure that their resilience requirements are either eliminated (if
    possible) or are transferred and updated to the assets that replace them. Doing this is especially critical when
    assets are shared between services and have common resilience requirements.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CM-3 Configuration Change Control</p>
<ol start="1" type="a">
    <li>Determines the types of changes to the information system that are configuration- controlled;</li>
    <li>Reviews proposed configuration-controlled changes to the information system and approves or disapproves such
        changes with explicit consideration for security impact analyses;</li>
    <li>Documents configuration change decisions associated with the information system;</li>
    <li>Implements approved configuration-controlled changes to the information system;</li>
    <li>Retains records of configuration-controlled changes to the information system</li>
    <li>Audits and reviews activities associated with configuration-controlled changes to the information system; and
    </li>
    <li>Coordinates and provides oversight for configuration change control activities</li>
</ol>
<p class="p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2,
    &ldquo;Change Management.&rdquo;</p>
<p class="p1">NIST CSF References: PR.IP</p>' WHERE [Mat_Question_Id] = 1258 AND [Sequence] = 45
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG3.SP2] </strong>Manage Changes to Assets and Inventory</p>
<p class="p1">Organizational and operational conditions are continually changing. These changes result in daily changes
    to the high-value assets that help the organization&apos;s services achieve their missions. For example, the
    following are common organizational events that would affect high-value assets:</p>
<ul>
    <li>staff changes, including the addition of new staff members (either internally or externally), the transfer of
        existing staff members from one organizational unit to another, and the termination of staff members</li>
    <li>changes to information such as the creation, alteration, or deletion of paper and electronic records, files, and
        databases</li>
    <li>technology refresh, such as the addition of new technical components, changes to existing technical components,
        and the elimination or retirement of existing technology</li>
    <li>facilities changes, such as the addition of new facilities (whether owned by the organization or an external
        business partner), alteration of existing facilities, and the retirement of a facility</li>
</ul>
<p class="p1">Besides the addition of new assets, this practice also addresses changes to the description or composition
    of an asset. For example, if an asset takes an additional form (such as when a paper asset is imaged or an
    electronic asset is printed), this must be documented as part of the asset description to ensure that current
    protection and sustainment strategies align properly and provide coverage across a range of asset media. Assets may
    also change ownership, custodianship, location, or value --all of which must be updated to ensure a current asset
    profile and inventory.</p>
<p class="p1">In addition, whenever assets are eliminated (for example, a server is retired or vital staff members leave
    the organization), owners of those assets must ensure that their resilience requirements are either eliminated (if
    possible) or are transferred and updated to the assets that replace them. Doing this is especially critical when
    assets are shared between services and have common resilience requirements.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CM-3 Configuration Change Control</p>
<ol start="1" type="a">
    <li>Determines the types of changes to the information system that are configuration- controlled;</li>
    <li>Reviews proposed configuration-controlled changes to the information system and approves or disapproves such
        changes with explicit consideration for security impact analyses;</li>
    <li>Documents configuration change decisions associated with the information system;</li>
    <li>Implements approved configuration-controlled changes to the information system;</li>
    <li>Retains records of configuration-controlled changes to the information system</li>
    <li>Audits and reviews activities associated with configuration-controlled changes to the information system; and
    </li>
    <li>Coordinates and provides oversight for configuration change control activities</li>
</ol>
<p class="p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2,
    &ldquo;Change Management.&rdquo;</p>
<p class="p1">NIST CSF References: PR.IP</p>' WHERE [Mat_Question_Id] = 1259 AND [Sequence] = 46
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG3.SP2] </strong>Manage Changes to Assets and Inventory</p>
<p class="p1">Organizational and operational conditions are continually changing. These changes result in daily changes
    to the high-value assets that help the organization&apos;s services achieve their missions. For example, the
    following are common organizational events that would affect high-value assets:</p>
<ul>
    <li>staff changes, including the addition of new staff members (either internally or externally), the transfer of
        existing staff members from one organizational unit to another, and the termination of staff members</li>
    <li>changes to information such as the creation, alteration, or deletion of paper and electronic records, files, and
        databases</li>
    <li>technology refresh, such as the addition of new technical components, changes to existing technical components,
        and the elimination or retirement of existing technology</li>
    <li>facilities changes, such as the addition of new facilities (whether owned by the organization or an external
        business partner), alteration of existing facilities, and the retirement of a facility</li>
</ul>
<p class="p1">Besides the addition of new assets, this practice also addresses changes to the description or composition
    of an asset. For example, if an asset takes an additional form (such as when a paper asset is imaged or an
    electronic asset is printed), this must be documented as part of the asset description to ensure that current
    protection and sustainment strategies align properly and provide coverage across a range of asset media. Assets may
    also change ownership, custodianship, location, or value --all of which must be updated to ensure a current asset
    profile and inventory.</p>
<p class="p1">In addition, whenever assets are eliminated (for example, a server is retired or vital staff members leave
    the organization), owners of those assets must ensure that their resilience requirements are either eliminated (if
    possible) or are transferred and updated to the assets that replace them. Doing this is especially critical when
    assets are shared between services and have common resilience requirements.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CM-3 Configuration Change Control</p>
<ol start="1" type="a">
    <li>Determines the types of changes to the information system that are configuration- controlled;</li>
    <li>Reviews proposed configuration-controlled changes to the information system and approves or disapproves such
        changes with explicit consideration for security impact analyses;</li>
    <li>Documents configuration change decisions associated with the information system;</li>
    <li>Implements approved configuration-controlled changes to the information system;</li>
    <li>Retains records of configuration-controlled changes to the information system</li>
    <li>Audits and reviews activities associated with configuration-controlled changes to the information system; and
    </li>
    <li>Coordinates and provides oversight for configuration change control activities</li>
</ol>
<p class="p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2,
    &ldquo;Change Management.&rdquo;</p>
<p class="p1">NIST CSF References: PR.IP</p>' WHERE [Mat_Question_Id] = 1260 AND [Sequence] = 47
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG3.SP2] </strong>Manage Changes to Assets and Inventory</p>
<p class="p1">Organizational and operational conditions are continually changing. These changes result in daily changes
    to the high-value assets that help the organization&apos;s services achieve their missions. For example, the
    following are common organizational events that would affect high-value assets:</p>
<ul>
    <li>staff changes, including the addition of new staff members (either internally or externally), the transfer of
        existing staff members from one organizational unit to another, and the termination of staff members</li>
    <li>changes to information such as the creation, alteration, or deletion of paper and electronic records, files, and
        databases</li>
    <li>technology refresh, such as the addition of new technical components, changes to existing technical components,
        and the elimination or retirement of existing technology</li>
    <li>facilities changes, such as the addition of new facilities (whether owned by the organization or an external
        business partner), alteration of existing facilities, and the retirement of a facility</li>
</ul>
<p class="p1">Besides the addition of new assets, this practice also addresses changes to the description or composition
    of an asset. For example, if an asset takes an additional form (such as when a paper asset is imaged or an
    electronic asset is printed), this must be documented as part of the asset description to ensure that current
    protection and sustainment strategies align properly and provide coverage across a range of asset media. Assets may
    also change ownership, custodianship, location, or value --all of which must be updated to ensure a current asset
    profile and inventory.</p>
<p class="p1">In addition, whenever assets are eliminated (for example, a server is retired or vital staff members leave
    the organization), owners of those assets must ensure that their resilience requirements are either eliminated (if
    possible) or are transferred and updated to the assets that replace them. Doing this is especially critical when
    assets are shared between services and have common resilience requirements.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CM-3 Configuration Change Control</p>
<ol start="1" type="a">
    <li>Determines the types of changes to the information system that are configuration- controlled;</li>
    <li>Reviews proposed configuration-controlled changes to the information system and approves or disapproves such
        changes with explicit consideration for security impact analyses;</li>
    <li>Documents configuration change decisions associated with the information system;</li>
    <li>Implements approved configuration-controlled changes to the information system;</li>
    <li>Retains records of configuration-controlled changes to the information system</li>
    <li>Audits and reviews activities associated with configuration-controlled changes to the information system; and
    </li>
    <li>Coordinates and provides oversight for configuration change control activities</li>
</ol>
<p class="p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2,
    &ldquo;Change Management.&rdquo;</p>
<p class="p1">NIST CSF References: PR.IP</p>' WHERE [Mat_Question_Id] = 1261 AND [Sequence] = 48
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG3.SP2] </strong>Manage Changes to Assets and Inventory</p>
<p class="p1">Organizational and operational conditions are continually changing. These changes result in daily changes
    to the high-value assets that help the organization&apos;s services achieve their missions. For example, the
    following are common organizational events that would affect high-value assets:</p>
<ul>
    <li>staff changes, including the addition of new staff members (either internally or externally), the transfer of
        existing staff members from one organizational unit to another, and the termination of staff members</li>
    <li>changes to information such as the creation, alteration, or deletion of paper and electronic records, files, and
        databases</li>
    <li>technology refresh, such as the addition of new technical components, changes to existing technical components,
        and the elimination or retirement of existing technology</li>
    <li>facilities changes, such as the addition of new facilities (whether owned by the organization or an external
        business partner), alteration of existing facilities, and the retirement of a facility</li>
</ul>
<p class="p1">Besides the addition of new assets, this practice also addresses changes to the description or composition
    of an asset. For example, if an asset takes an additional form (such as when a paper asset is imaged or an
    electronic asset is printed), this must be documented as part of the asset description to ensure that current
    protection and sustainment strategies align properly and provide coverage across a range of asset media. Assets may
    also change ownership, custodianship, location, or value --all of which must be updated to ensure a current asset
    profile and inventory.</p>
<p class="p1">In addition, whenever assets are eliminated (for example, a server is retired or vital staff members leave
    the organization), owners of those assets must ensure that their resilience requirements are either eliminated (if
    possible) or are transferred and updated to the assets that replace them. Doing this is especially critical when
    assets are shared between services and have common resilience requirements.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CM-3 Configuration Change Control</p>
<ol start="1" type="a">
    <li>Determines the types of changes to the information system that are configuration- controlled;</li>
    <li>Reviews proposed configuration-controlled changes to the information system and approves or disapproves such
        changes with explicit consideration for security impact analyses;</li>
    <li>Documents configuration change decisions associated with the information system;</li>
    <li>Implements approved configuration-controlled changes to the information system;</li>
    <li>Retains records of configuration-controlled changes to the information system</li>
    <li>Audits and reviews activities associated with configuration-controlled changes to the information system; and
    </li>
    <li>Coordinates and provides oversight for configuration change control activities</li>
</ol>
<p class="p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2,
    &ldquo;Change Management.&rdquo;</p>
<p class="p1">NIST CSF References: PR.IP</p>' WHERE [Mat_Question_Id] = 1262 AND [Sequence] = 49
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[EXD:SG3.SP4] </strong>Formalize Relationships</p>
<p class="p1">When external entities support the execution of the acquirer&apos;s services, they become an extension of
    the acquirer and should be subject to the same or similar policies, standards, and guidelines as the acquirer&apos;s
    employees.</p>
<p class="p1">Change procedures should be part of a formal agreement that is established with an external entity. The
    change procedures should also include procedures for changing any of the agreement provisions by mutual agreement.
    Defining and communicating change procedures, including both routine and emergency changes, ensures that changes to
    assets will be handled in an efficient and controlled manner, consistent with acquirer policy, standards, and
    guidelines.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal
    Information Systems,&rdquo; Section 4.1.1 Integrators - Verification and Validation Requirements.</p>
<p class="p1">Use multiple and complementary monitoring and auditing approaches and leverage existing data to analyze
    for supply chain risk during sustainment.</p>
<p class="p1">Evaluate the changes in maintenance agreements (e.g., physical move to different location/ offshoring,
    changes in ownership, outsourcing, and change in key personnel) and manage risks associated with them.</p>
<p class="p1"><em>ISO 27036-1, </em>&ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; 5.5C ICT Supply Chain Considerations. </p>
<p class="p1"><em>ITIL Service Design</em>, The Stationery Office, 2011, Best Management Practice. Section 4.8.5,
    &ldquo;Process Activities, Methods and Techniques.&rdquo;</p>
<p class="p1">NIST CSF References: ID.SC-1, ID.SC-3, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1268 AND [Sequence] = 55
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[TM:SG5.SP3] </strong>Manage Technology Capacity</p>
<p class= "p1">Capacity is a significant factor in meeting the availability requirements of technology assets and, in
    turn, of the services that rely on these assets.</p>
<p class= "p1">Consideration of capacity to ensure technology availability and meet business objectives requires a
    proactive approach to managing demand and anticipating future needs. <em>Capacity management should be part of a
        formal agreement that is established with an external entity</em>. Defining and communicating a capacity
    management strategy and the related requirements helps ensure that assets will meet the resilience requirements of
    the service.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; Section 4.4 Share Information within Strict Limits.</p>
<p class= "p1"><em>Acquirers, integrators, and suppliers need to share data and information</em>. For the purposes of ICT
    SCRM, information sharing is the process by which acquirers, integrators, and suppliers (including COTS) exchange
    pertinent data and information. The data and information that may be shared can span the entire system or element
    life cycle and the entire supply chain. Content to be shared may include data and information about the use of
    elements, users, acquirer, integrator, or supplier organizations, as well as information regarding issues that have
    been identified or raised regarding specific elements. Information should be protected according to mutually agreed-upon practices.</p>
<p class= "p1"><em>ITIL Service Transition</em>, The Stationery Office, 2011, Best Management Practice. Section 4.2.6.4,
    &ldquo;Interfaces.&rdquo;</p>
<p class= "p1">NIST CSF References: ID.SC-3, ID.SC-4, PR.DS-4</p>' WHERE [Mat_Question_Id] = 1270 AND [Sequence] = 57
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG3.SP2] </strong>Establish Resilience Specifications for External Dependencies</p>
<p class="p1">Periodically review and update resilience specifications for external dependencies and entities as
    conditions warrant.</p>
<p class="p1"><strong>[EC:SG4.SP4] </strong>Manage Dependencies on Public Infrastructure</p>
<p class="p1">Identify and document infrastructure dependencies that the organization relies upon to provide services.
    Remember that these dependencies may be internal as well as external, particularly where the organization has
    control over certain aspects of facility infrastructure, such as power or telecommunications that they provide for
    their own operations.</p>
<p class="p1">Typically, this activity results from business impact analysis. However, it can be included as part of
    service continuity planning or facility asset definition, depending on the organization. A resulting list of public
    infrastructure providers for each facility should be documented and made available for inclusion in service
    continuity plans as appropriate.</p>
<p class="p1"><strong>Additional References:</strong></p>
<p class="p1"><em>NIST Special Publication 800-161</em>, &ldquo;Supply Chain Risk Management Practices for Federal
    Information Systems and Organizations,&rdquo; Section 3 TASK 4-2: Risk Monitoring.</p>
<p class="p1">Monitor organizational information systems and environments of operation on an ongoing basis to verify
    compliance, determine effectiveness of risk response measures, and identify changes.</p>
<p class="p1">. . . organizations should monitor compliance, effectiveness, and change. Monitoring compliance within the
    context of ICT SCRM involves monitoring an organization&apos;s processes and ICT products and services for
    compliance with the established security and ICT SCRM requirements. Monitoring effectiveness involves monitoring the
    resulting risks to determine whether these established security and ICT SCRM requirements produce the intended
    results. <em>Monitoring change involves monitoring the environment for any changes that would require changing
        requirements and mitigations/controls to maintain an acceptable level of ICT supply chain risk.</em></p>
<p class="p1"><em>ISO 27036-3</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; 6.4.2e. NIST CSF </p>
<p class="p1">References: ID.BE-1, ID.BE-5, ID.SC-3</p>' WHERE [Mat_Question_Id] = 1274 AND [Sequence] = 61
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[AM:SG1.SP1] </strong>Enable Access</p>
<p class="p1">Access privileges are assigned and approved by asset owners based on the role of the person, object, or
    entity that is requesting access. Asset owners are the persons or organizational units, internal or external to the
    organization, who have primary responsibility for the viability, productivity, and resilience of a high-value
    organizational asset. It is the owner&apos;s responsibility to ensure that requirements for protecting and
    sustaining assets are defined for assets under their control. In part, these requirements are satisfied by defining
    and <em>assigning access privileges that are commensurate with the requirements</em>. Therefore, the asset owner is
    responsible for granting and revoking access privileges to an identity based on the identity&apos;s role and the
    asset&apos;s resilience requirements. To be successful, asset owners must be aware of identities that need access to
    their assets and must evaluate the need with respect to business and resilience requirements before granting
    approval.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4, </em>&ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, AC-17 Remote Access</p>
<p class="p1">The organization:</p>
<ol class="decimal_type" start="1">
    <li>Establishes and documents usage restrictions, configuration/connection requirements, and implementation guidance
        for each type of remote access allowed; and</li>
    <li>Authorizes remote access to the information system prior to allowing such connections.</li>
</ol>
<p class="p1"><em>ISO 27036-3</em>, &ldquo;IT-Security Techniques-Information Security for Supplier
    Relationships,&rdquo; 6.2.2 Infrastructure Management Process.</p>
<p class="p1">NIST CSF References: PR.AC-1, PR.AC-2, PR.AC-3, PR.AC-6, PR.AC-7, PR.MA-2</p>' WHERE [Mat_Question_Id] = 1279 AND [Sequence] = 66
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[AM:SG1.SP2] </strong>Manage Changes to Access Privileges</p>
<p class= "p1">The continual evolution of the operational environment and the identity community (persons, objects, and
    entities) requires constant changes to be made to access privileges to organizational assets. There are many
    different scenarios that may result in legitimate changes to access privileges, such as</p>
<ul>
    <li><em>changes in job responsibilities and roles, such as when employees are promoted, take other positions in the
            organization, or leave the organization</em></li>
    <li><em>changes to outsourcing arrangements or the roles of external contractors</em></li>
    <li>changes to internal and external systems and processes that access organizational assets</li>
    <li>changes in the identity community (i.e., addition or deletion of identity, changes to the identity&apos;s roles)
        (Changes to the identity community are addressed in ID:SG2.SP1 in the Identity Management process area.)</li>
    <li>changes to the assets to which access privileges are provided and/or changes to the asset&apos;s resilience
        requirements (which could cascade through all access privileges)</li>
    <li>periodic review and maintenance of access privileges (as described in AM:SG2.SP3)</li>
    <li>In order to get a handle on this ever-changing environment, the organization must establish criteria to
        determine when a change in the operational environment would trigger a change in access privileges.</li>
</ul>
<p class= "p1">Owners of organizational assets have a role in the change management of access privileges. Owners are
    responsible for initiating and approving changes as required before corresponding access controls are modified to
    accommodate the changes. This may involve communication between asset owners and asset custodians who are
    responsible for implementing and maintaining those access controls. Owners are also responsible for following up to
    ensure that access privileges have been granted only to the approved limit.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, AC-2, Account Management.</p>
<ol start="1" type="a">
    <li>Identifies and selects the following types of information system(s)</li>
    <li>Assigns account managers for information system accounts;</li>
    <li>Establishes conditions for group and role membership;</li>
    <li>Specifies authorized users of the information system, group and role membership, and access authorizations
        (i.e., privileges) and other attributes (as required) for each account;</li>
    <li>Requires approvals by [Assignment: organization-defined personnel or roles] for requests to create information
        system accounts;</li>
    <li>Creates, enables, modifies, disables, and removes information system accounts in accordance with
        organization-defined procedures or conditions;</li>
    <li>Monitors the use of information system accounts;</li>
    <li>Notifies account managers:<ol>
            <li>When accounts are no longer required;</li>
            <li>When users are terminated or transferred; and</li>
            <li>When individual information system usage or need-to-know changes;</li>
        </ol>
    </li>
    <li>Authorizes access to the information system based on:<ol>
            <li>A valid access authorization;</li>
            <li>Intended system usage; and</li>
            <li>Other attributes as required by the organization or associated missions/business functions;</li>
        </ol>
    </li>
    <li>Reviews accounts for compliance with account management requirements and</li>
    <li>Establishes a process for reissuing shared/group account credentials (if deployed) when individuals are
        removed from the group</li>
</ol>
<p class= "p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; Section 4.2 Limit Access and Exposure within the Supply Chain.</p>
<p class= "p1">NIST CSF References: PR.AC-1, PR.AC-2, PR.AC-3, PR.IP-11</p>' WHERE [Mat_Question_Id] = 1280 AND [Sequence] = 67
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[IMC:SG1.SP1] </strong>Plan for Incident Management</p>
<p class= "p1">Establish the incident management plan. The incident management plan should address, at a minimum</p>
<ul>
    <li>the acquirer&apos;s philosophy for incident management</li>
    <li>the structure of the incident management process</li>
    <li>the requirements and objectives of the incident management process relative to managing operational resilience
    </li>
    <li>a description of how the acquirer will identify incidents, analyze them, and respond to them</li>
    <li>the roles and responsibilities necessary to carry out the plan</li>
    <li>applicable training needs and requirements</li>
</ul>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, IR-4 Incident Handling.</p>
<ol start="1" type="a">
    <li>Implements an <em>incident handling capability for security incidents that includes preparation, detection and
            analysis, containment, eradication, and recovery</em>;</li>
    <li>Coordinates incident handling activities with contingency planning activities; and</li>
    <li>Incorporates lessons learned from ongoing incident handling activities into incident response procedures,
        training, and testing/exercises, and implements the resulting A. changes accordingly.</li>
</ol>
<p class= "p1"><em>NIST Special Publication 800-61</em>, &ldquo;Computer Security Incident Handling Guide,&rdquo;
    Handbook for Computer Security Incident Response Teams (CSIRTs).</p>
<p class= "p1">NIST CSF References: ID.SC-5, PR.IP-9</p>' WHERE [Mat_Question_Id] = 1783 AND [Sequence] = 76
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[SC:SG3.SP2] </strong>Develop and document Service Continuity Plans</p>
<p class="p1">Document the service continuity plans using available templates as appropriate. A service continuity plan
    typically includes the following information:</p>
<ul>
    <li>identification of authority for initiating and executing the plan (plan ownership)</li>
    <li>identification of the communication mechanism to initiate execution of the plan</li>
</ul>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-161</em>, &ldquo;Supply Chain Risk Management Practices for Federal
    Information Systems and Organizations,,&rdquo; Section 3 Contingency Planning, 74.</p>
<p class="p1"><em>Organizations must establish, maintain, and effectively implement plans for emergency response, backup
        operations, and post-disaster recovery for organizational information systems to ensure the availability of
        critical information resources and continuity of operations in emergency situations.</em></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, CP-2(1) Contingency Plan | Coordinate with Related Plans.</p>
<p class="p1"><em>NIST Special Publication 800-34</em>, &ldquo;Contingency Planning for Federal Information
    Systems,&rdquo; Chapter 3. </p>
<p class="p1"><em>ISO 22301</em>, &ldquo;Societal Security - Business continuity management systems -
    Requirements,&rdquo; Section 6 Planning.</p>
<p class="p1">NIST CSF References: ID.SC-5, PR.IP-9</p>' WHERE [Mat_Question_Id] = 1785 AND [Sequence] = 78
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>  <p class="p1"><strong>[SC:SG7.SP1] </strong>Establish Change Criteria</p>  <p class="p1">Because of changing operational and acquirer conditions, service continuity and incident management plans      may have a short useful life. Identifying and understanding the types of acquirer and operational triggers that may      indicate a need to revisit and revise service continuity plans ensures that these plans remain viable. Criteria for      making changes to service continuity and incident management plans may include:</p>  <ul>      <li>changes to services or how those services are delivered</li>      <li>relationship changes</li>      <li>regulatory changes</li>      <li>weaknesses or gaps identified as a result of testing or an activation of the plan</li>  </ul>  <p class="p1"><strong>[IMC:GG2.GP8] </strong>Monitor and Control the Process</p>  <p class="p1">Periodic reviews of the incident management and control process are needed to ensure that</p>  <ul>      <li>the process is known and accessible</li>      <li>events and incidents are identified, reported, and addressed on a timely basis</li>      <li>events and incidents are logged and closed</li>      <li>events are properly triaged and analyzed for root causes</li>      <li>incidents are properly declared</li>      <li>incidents are properly escalated to designated stakeholders</li>      <li>incidents are communicated appropriately to stakeholders at a level commensurate with their involvement</li>      <li>event and incident status reports are provided to appropriate stakeholders in a timely manner</li>      <li>post-incident reviews are performed to improve the process</li>      <li>actions requiring management involvement are elevated in a timely manner</li>      <li>the performance of process activities is being monitored and regularly reported</li>  </ul>  <p class="p1"><strong>Additional References</strong></p>  <p class="p1"><em>NIST Special Publication 800-34</em>, &ldquo;Contingency Planning for Federal Information      Systems,&rdquo; Chapter 3.6 Plan Maintenance.</p>  <p class="p1">To be effective, the plan must be maintained in a ready state that accurately reflects system      requirements, procedures, organizational structure, and policies. As identified as part of RMF Step 6 (Continuous      Monitoring), a continuous monitoring process can provide organizations with an effective tool      for plan maintenance, producing ongoing updates to security plans, security assessment reports, and plans of action      and milestone documents.</p>  <p class="p1"><em>As a general rule, the plan should be reviewed for accuracy and completeness at an      organization-defined frequency or whenever significant changes occur to any element of the plan</em>. Certain      elements, such as contact lists, will require more frequent reviews. The plans for moderate- or high-impact systems      should be reviewed more often.</p>  <p class="p1"><em>NIST Special Publication 800-137</em>, &ldquo;Information Security Continuous Monitoring (ISCM) for      Federal Information Systems and Organizations.&rdquo;</p>  <p class="p1">NIST CSF References: ID.SC-2, ID.SC-3</p>' WHERE [Mat_Question_Id] = 1796 AND [Sequence] = 89
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>  <p class="p1"><strong>[SC:SG7.SP1] </strong>Establish Change Criteria</p>  <p class="p1">Because of changing operational and acquirer conditions, service continuity and incident management plans      may have a short useful life. Identifying and understanding the types of acquirer and operational triggers that may      indicate a need to revisit and revise service continuity plans ensures that these plans remain viable. Criteria for      making changes to service continuity and incident management plans may include:</p>  <ul>      <li>changes to services or how those services are delivered</li>      <li>relationship changes</li>      <li>regulatory changes</li>      <li>weaknesses or gaps identified as a result of testing or an activation of the plan</li>  </ul>  <p class="p1"><strong>[IMC:GG2.GP8] </strong>Monitor and Control the Process</p>  <p class="p1">Periodic reviews of the incident management and control process are needed to ensure that</p>  <ul>      <li>the process is known and accessible</li>      <li>events and incidents are identified, reported, and addressed on a timely basis</li>      <li>events and incidents are logged and closed</li>      <li>events are properly triaged and analyzed for root causes</li>      <li>incidents are properly declared</li>      <li>incidents are properly escalated to designated stakeholders</li>      <li>incidents are communicated appropriately to stakeholders at a level commensurate with their involvement</li>      <li>event and incident status reports are provided to appropriate stakeholders in a timely manner</li>      <li>post-incident reviews are performed to improve the process</li>      <li>actions requiring management involvement are elevated in a timely manner</li>      <li>the performance of process activities is being monitored and regularly reported</li>  </ul>  <p class="p1"><strong>Additional References</strong></p>  <p class="p1"><em>NIST Special Publication 800-34</em>, &ldquo;Contingency Planning for Federal Information      Systems,&rdquo; Chapter 3.6 Plan Maintenance.</p>  <p class="p1">To be effective, the plan must be maintained in a ready state that accurately reflects system      requirements, procedures, organizational structure, and policies. As identified as part of RMF Step 6 (Continuous      Monitoring), a continuous monitoring process can provide organizations with an effective tool      for plan maintenance, producing ongoing updates to security plans, security assessment reports, and plans of action      and milestone documents.</p>  <p class="p1"><em>As a general rule, the plan should be reviewed for accuracy and completeness at an      organization-defined frequency or whenever significant changes occur to any element of the plan</em>. Certain      elements, such as contact lists, will require more frequent reviews. The plans for moderate- or high-impact systems      should be reviewed more often.</p>  <p class="p1"><em>NIST Special Publication 800-137</em>, &ldquo;Information Security Continuous Monitoring (ISCM) for      Federal Information Systems and Organizations.&rdquo;</p>  <p class="p1">NIST CSF References: ID.SC-2, ID.SC-3</p>' WHERE [Mat_Question_Id] = 1797 AND [Sequence] = 90
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[EXD:SG4.SP1] </strong>Monitor External Entity Performance</p>
<p class="p1">The performance of external entities is monitored to ensure against specifications, including:</p>
<ul>
    <li><em>controls and control environments</em></li>
    <li>financial condition and management practices of the external entity</li>
    <li>service continuity and incident management plans</li>
    <li>compliance practices and performance</li>
</ul>
<p class="p1"><strong>[CTRL:SG4.SP1] </strong>Assess Controls</p>
<p class="p1">Assessing the control system at external entities is an ongoing activity that allows the acquirer to
    measure the effectiveness of controls across resilience activities. For example, through
    monitoring and ongoing measurement and analysis, the acquirer can determine whether controls at external entities
    are satisfying control objectives, strategies for protecting and sustaining services and assets, and resilience
    requirements. These activities can also ascertain if controls for resilience activities are effective and producing
    the intended results. Monitoring and measurement are two ways that the acquirer collects necessary data (and invokes
    a vital feedback loop) to know how well controls are performing in support of the operational resilience of high
    value services.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, SA-12(11) Supply Chain Protection | Penetration Testing / Analysis of
    Elements, Processes, and Actors.</p>
<p class="p1">The organization employs one or more of the following: organizational analysis, independent third-party
    analysis, organizational penetration testing, independent third-party penetration testing of organization-defined
    supply chain elements, processes, and actors associated with the information system, system component, or
    information system service.</p>
<p class="p1">Supplemental Guidance: This control enhancement addresses analysis and/or testing of the supply chain, not
    just delivered items. Supply chain elements are information technology products or product components that contain
    programmable logic and that are critically important to information system functions. Supply chain processes
    include, for example: (i) hardware, software, and firmware development processes; (ii) shipping/ handling
    procedures; (iii) personnel and physical security programs; (iv) configuration management tools/measures to maintain
    provenance; or (v) any other programs, processes, or procedures associated with the production/distribution of
    supply chain elements. Supply chain actors are individuals with specific roles and responsibilities in the supply
    chain. The <em>evidence generated during analyses and testing of supply chain elements, processes, and actors is
        documented and used to inform organizational risk management activities and decisions.</em></p>
<p class="p1"><em>NIST Special Publication 800-161, </em>&ldquo;Supply Chain Risk Management Practices for Federal
    Information Systems and Organizations, ICT SCRM Controls,&rdquo; 43-49.</p>
<p class="p1">NIST CSF References: ID.SC-4</p>' WHERE [Mat_Question_Id] = 1798 AND [Sequence] = 91
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong></p>
<p class= "p1"><strong>[EXD:SG4.SP1] </strong>Monitor External Entity Performance</p>
<p class= "p1">The performance of external entities is monitored to ensure against specifications, including:</p>
<ul>
    <li>controls and control environments</li>
    <li>financial condition and management practices of the external entity</li>
    <li>service continuity and incident management plans compliance practices and performance </li>
</ul>
<p class= "p1"><strong>[CTRL:SG4.SP1] </strong>Assess Controls</p>
<p class= "p1"><em>Assessing the control system at external entities is an ongoing activity that allows the acquirer to
        measure the effectiveness of controls across resilience activities</em>. For example, through monitoring and
    ongoing measurement and analysis, the acquirer can determine whether controls at external entities are satisfying
    control objectives, strategies for protecting and sustaining services and assets, and resilience requirements. These
    activities can also ascertain if controls for resilience activities are effective and producing the intended
    results. Monitoring and measurement are two ways that the acquirer collects necessary data (and invokes a vital
    feedback loop) to know how well controls are performing in support of the operational resilience of high-value
    services.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; 4.2.7 Integrator - Verification and Validation Requirements.
</p>
<p class= "p1">Demonstrate that a mix of personnel, physical, and logical access controls are implemented which provide a
    level of protection commensurate with the sensitivity/criticality of the services provided or the elements procured.
</p>
<ol type="a">
    <li>Perform technical and procedural audits of mechanisms used to shield information related to elements, including
        uses, requirements, and metadata.</li>
    <li>Employ Red Team approaches to identify potential pathways or opportunities for adversaries to exploit deficits
        or weaknesses in supply chain processes that would result in the exposure of the element or associated
        information including uses of element.</li>
    <li><em>Assess the effectiveness of alternative configurations in protecting access of elements, processes, systems,
            and information for the purposes of confidentiality, integrity, and availability.</em></li>
    <li><em>Test internal access controls for the ability to detect anomalous behavior and facilitate timely
            intervention to prevent or reduce adverse consequences.</em></li>
</ol>
<p class="p1"><em>NIST Special Publication 800-161</em>, &ldquo;Supply Chain Risk Management Practices for Federal
    Information Systems and Organizations,&rdquo; Section 3 ICT SCRM Controls, 43-49.</p>
<p class="p1">NIST CSF References: ID.SC-1, ID.SC-2, ID.SC-3, ID.SC-4</p>' WHERE [Mat_Question_Id] = 1799 AND [Sequence] = 92
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class= "p1"><strong>CERT-RMM Reference</strong> </p>
<p class= "p1"><strong>[MON:SG1.SP2] </strong>Identify Stakeholders</p>
<p class= "p1">Identify stakeholders of the monitoring process. The list should include internal and external
    stakeholders and should be seeded by examining operational resilience management processes and their organizational
    owners. Stakeholders of the organization&rsquo;s monitoring processes are those internal and external people,
    entities, or agencies that require information about the operational resilience management processes for which they
    have responsibility and for which they must achieve resilience goals, objectives, and obligations.</p>
<p class= "p1"><strong>Additional References</strong></p>
<p class= "p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; 2.2 Foundational Practices.</p>
<p class= "p1">Assign roles and responsibilities to specific individuals, including who has the required authority to
    take action, who has accountability for an action or result, and who should be consulted and/or informed.</p>
<p class= "p1">Ensure information system security, acquisition personnel, legal counsel, and other appropriate advisors
    and stakeholders are participating in decision making from system concept definition/review and are involved in, or
    approve of, each milestone decision through the entire system life cycle for federal systems.</p>
<p class= "p1">NIST Special Publication 800-137, &ldquo;Information Security Continuous Monitoring (ISCM) for Federal
    Information Systems and Organizations,&rdquo; Section 2.1 Organization-wide View of ISCM.</p>
<p class= "p1">NIST CSF References: ID.AM-6, ID.RA-2, PR.AT-5</p>' WHERE [Mat_Question_Id] = 1800 AND [Sequence] = 93
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM References</strong></p>
<p class="p1"><strong>[MON:SG2.SP2] </strong>Establish Collection Standards and Guidelines</p>
<p class="p1">Collected and recorded information is distributed to appropriate stakeholders. The continuous and
    effective management of operational resilience is highly dependent on information collected in the monitoring
    process. Some of the key objectives of monitoring and information distribution are</p>
<ul>
    <li><em>identifying, preventing, and responding to threats and disruptive events</em></li>
    <li>determining the effectiveness of strategies to protect and sustain assets and services</li>
    <li>determining the effectiveness of resilience management processes</li>
    <li>improving resilience management processes</li>
</ul>
<p class="p1">To meet these objectives, <em>monitoring information must be available for use when needed by
        stakeholders, internally and externally. Thus, the acquirer must establish viable distribution methods and
        channels to move collected information to stakeholders as requested in a reliable and consistent manner.</em>
</p>
<p class="p1"><strong>[COMM:SG3.SP2] </strong>Establish and maintain communications infrastructure</p>
<p class="p1"><em>Communicate threat information to key internal and external stakeholders</em>. Implement and manage
    the communications infrastructure.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NISTIR 7622</em>, &ldquo;Notional Supply Chain Risk Management Practices for Federal Information
    Systems,&rdquo; 2.1 Challenges.</p>
<p class="p1">Furthermore, acquirer, integrator, and supplier organizations generally implement quality and security
    through two separate enterprise operational organizations. Supply chain quality and security vulnerabilities are
    likely to be addressed through these separate organizations. <em>Whether addressing intentional or unintentional
        vulnerabilities and related mitigations, cross-communication between these two enterprise organizations is
        required to holistically approach ICT SCRM.</em></p>
<p class="p1"><em>NIST Special Publication 800-30</em>, &ldquo;Risk Management Guide for Information Technology
    Systems,&rdquo; 14-15. </p>
<p class="p1">NIST CSF References: ID.RA-2, PR.IP-8, RS.CO-5</p>' WHERE [Mat_Question_Id] = 1805 AND [Sequence] = 98
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1">Consider identifying stakeholders of the EDM process and engaging them to ensure they are aware of their
    roles. Examples include:</p>
<ul>
    <li>internal and external owners and custodians of organizational assets</li>
    <li>internal and external service owners</li>
    <li>organizational unit and line of business managers responsible for high-value assets and the services they
        support</li>
    <li>staff responsible for managing operational risk</li>
    <li>staff responsible for establishing, implementing, and maintaining an internal control system for organizational
        assets</li>
    <li>staff required to develop, test, implement, and execute service continuity plans that involve external
        dependencies</li>
    <li>acquisition and procurement staff </li>
    <li>internal and external auditors</li>
</ul>' WHERE [Mat_Question_Id] = 1811 AND [Sequence] = 104
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1">Consider developing standards and guidelines for external dependencies management. Examples include:</p>
<ul>
    <li>criteria for prioritizing external dependencies</li>
    <li>templates that define the information required to identify, track and manage external dependencies in databases
        or information repositories</li>
    <li>the guidelines and standards required to make risk statements and impact valuations</li>
    <li>agreement templates, including enterprise specifications that apply to external entities</li>
    <li>standard RFPs, including applicable requirements</li>
    <li>criteria for selecting external entities</li>
    <li>performance-monitoring report standards and templates </li>
    <li>inspection reports on deliverables</li>
    <li>corrective-action report standards and examples</li>
</ul>' WHERE [Mat_Question_Id] = 1812 AND [Sequence] = 105
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1">Consider implementing management oversight of EDM processes. Oversight may involve the following manager
    activities:</p>
<ul>
    <li>defining roles and responsibilities for processes in the EDM plan</li>
    <li>requiring reporting from staff concerning EDM status and issues</li>
    <li>developing policy that requires relevant staff to participate in EDM processes</li>
    <li>including EDM responsibilities in
        staff performance management goals and objectives, tracking progress against goals, and counseling or
        disciplining staff based on performance</li>
</ul>' WHERE [Mat_Question_Id] = 1813 AND [Sequence] = 106
UPDATE [dbo].[MATURITY_REFERENCE_TEXT] SET [Reference_Text]='<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1">Consider objectively evaluating adherence of the EDM process against its process description, standards,
    and procedures, and address non-compliance.</p>
<p class="p1">Evaluating adherence to the EDM process may be done by analyzing measures such as:</p>
<ul>
    <li>percentage of external dependencies without designated organizational owners</li>
    <li>percentage of external entities that have undergone some form of assessment, risk assessment, and audit compared
        to EDM plans and policies</li>
    <li>count of supplier relationships formed outside the EDM process</li>
    <li>percentage of external dependency records or
        database entries with old or incomplete information</li>
</ul>' WHERE [Mat_Question_Id] = 1818 AND [Sequence] = 111
PRINT(N'Operation applied to 36 rows out of 36')

PRINT(N'Update rows in [dbo].[NEW_REQUIREMENT]')
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit system access to authorized users, processes acting on behalf of authorized users, and devices (including other systems).' WHERE [Requirement_Id] = 16844
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit system access to the types of transactions and functions that authorized users are permitted to execute.' WHERE [Requirement_Id] = 16845
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Prevent non-privileged users from executing privileged functions and capture the execution of such functions in audit logs.' WHERE [Requirement_Id] = 16850
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Use session lock with pattern-hiding displays to prevent access and viewing of data after a period of inactivity.' WHERE [Requirement_Id] = 16853
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Encrypt CUI on mobile devices and mobile computing platforms.' WHERE [Requirement_Id] = 16862
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Verify and control/limit connections to and use of external systems.' WHERE [Requirement_Id] = 16863
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit use of portable storage devices on external systems.' WHERE [Requirement_Id] = 16864
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Control CUI posted or processed on publicly accessible systems.' WHERE [Requirement_Id] = 16865
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Ensure that managers, systems administrators, and users of organizational systems are made aware of the security risks associated with their activities and of the applicable policies, standards, and procedures related to the security of those systems.' WHERE [Requirement_Id] = 16866
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Ensure that personnel are trained to carry out their assigned information security-related duties and responsibilities.' WHERE [Requirement_Id] = 16867
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Create and retain system audit logs and records to the extent needed to enable the monitoring, analysis, investigation, and reporting of unlawful or unauthorized system activity.' WHERE [Requirement_Id] = 16869
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Review and update logged events.' WHERE [Requirement_Id] = 16871
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Alert in the event of an audit logging process failure.' WHERE [Requirement_Id] = 16872
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Correlate audit record review, analysis, and reporting processes for investigation and response to indications of unlawful, unauthorized, suspicious, or unusual activity.' WHERE [Requirement_Id] = 16873
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Provide audit record reduction and report generation to support on-demand analysis and reporting.' WHERE [Requirement_Id] = 16874
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Provide a system capability that compares and synchronizes internal system clocks with an authoritative source to generate time stamps for audit records.' WHERE [Requirement_Id] = 16875
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Protect audit information and audit logging tools from unauthorized access, modification, and deletion.' WHERE [Requirement_Id] = 16876
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit management of audit logging functionality to a subset of privileged users.' WHERE [Requirement_Id] = 16877
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Establish and maintain baseline configurations and inventories of organizational systems (including hardware, software, firmware, and documentation) throughout the respective system development life cycles.' WHERE [Requirement_Id] = 16878
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Establish and enforce security configuration settings for information technology products employed in organizational systems.' WHERE [Requirement_Id] = 16879
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Track, review, approve or disapprove, and log changes to organizational systems.' WHERE [Requirement_Id] = 16880
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Define, document, approve, and enforce physical and logical access restrictions associated with changes to organizational systems.' WHERE [Requirement_Id] = 16882
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Employ the principle of least functionality by configuring organizational systems to provide only essential capabilities.' WHERE [Requirement_Id] = 16883
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Apply deny-by-exception (blacklisting) policy to prevent the use of unauthorized software or deny-all, permit-by-exception (whitelisting) policy to allow the execution of authorized software.' WHERE [Requirement_Id] = 16885
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Identify system users, processes acting on behalf of users, and devices.' WHERE [Requirement_Id] = 16887
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Authenticate (or verify) the identities of users, processes, or devices, as a prerequisite to allowing access to organizational systems.' WHERE [Requirement_Id] = 16888
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Store and transmit only cryptographically-protected passwords.' WHERE [Requirement_Id] = 16896
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Establish an operational incident-handling capability for organizational systems that includes preparation, detection, analysis, containment, recovery, and user response activities.' WHERE [Requirement_Id] = 16898
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Track, document, and report incidents to designated officials and/or authorities both internal and external to the organization.' WHERE [Requirement_Id] = 16899
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Perform maintenance on organizational systems.' WHERE [Requirement_Id] = 16901
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Provide controls on the tools, techniques, mechanisms, and personnel used to conduct system maintenance.' WHERE [Requirement_Id] = 16902
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Check media containing diagnostic and test programs for malicious code before the media are used in organizational systems.' WHERE [Requirement_Id] = 16904
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Protect (i.e., physically control and securely store) system media containing CUI, both paper and digital.' WHERE [Requirement_Id] = 16907
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit access to CUI on system media to authorized users.' WHERE [Requirement_Id] = 16908
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Sanitize or destroy system media containing CUI before disposal or release for reuse.' WHERE [Requirement_Id] = 16909
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Control the use of removable media on system components.' WHERE [Requirement_Id] = 16913
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Screen individuals prior to authorizing access to organizational systems containing CUI.' WHERE [Requirement_Id] = 16916
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Ensure that organizational systems containing CUI are protected during and after personnel actions such as terminations and transfers.' WHERE [Requirement_Id] = 16917
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Limit physical access to organizational systems, equipment, and the respective operating environments to authorized individuals.' WHERE [Requirement_Id] = 16918
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Protect and monitor the physical facility and support infrastructure for organizational systems.' WHERE [Requirement_Id] = 16919
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Enforce safeguarding measures for CUI at alternate work sites.' WHERE [Requirement_Id] = 16923
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Periodically assess the risk to organizational operations (including mission, functions, image, or reputation), organizational assets, and individuals, resulting from the operation of organizational systems and the associated processing, storage, or transmission of CUI.' WHERE [Requirement_Id] = 16924
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Scan for vulnerabilities in organizational systems and applications periodically and when new vulnerabilities affecting those systems and applications are identified.' WHERE [Requirement_Id] = 16925
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Remediate vulnerabilities in accordance with risk assessments.' WHERE [Requirement_Id] = 16926
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Periodically assess the security controls in organizational systems to determine if the controls are effective in their application.' WHERE [Requirement_Id] = 16927
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Develop and implement plans of action designed to correct deficiencies and reduce or eliminate vulnerabilities in organizational systems.' WHERE [Requirement_Id] = 16928
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Monitor security controls on an ongoing basis to ensure the continued effectiveness of the controls.' WHERE [Requirement_Id] = 16929
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Monitor, control, and protect communications (i.e., information transmitted or received by organizational systems) at the external boundaries and key internal boundaries of organizational systems.' WHERE [Requirement_Id] = 16930
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Employ architectural designs, software development techniques, and systems engineering principles that promote effective information security within organizational systems.' WHERE [Requirement_Id] = 16931
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Separate user functionality from system management functionality.' WHERE [Requirement_Id] = 16932
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Prevent remote devices from simultaneously establishing non-remote connections with organizational systems and communicating via some other connection to resources in external networks (i.e., split tunneling).' WHERE [Requirement_Id] = 16936
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Establish and manage cryptographic keys for cryptography employed in organizational systems.' WHERE [Requirement_Id] = 16939
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Identify, report, and correct system flaws in a timely manner.' WHERE [Requirement_Id] = 16946
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Provide protection from malicious code at designated locations within organizational systems.' WHERE [Requirement_Id] = 16947
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Monitor system security alerts and advisories and take action in response.' WHERE [Requirement_Id] = 16948
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Perform periodic scans of organizational systems and real-time scans of files from external sources as files are downloaded, opened, or executed.' WHERE [Requirement_Id] = 16950
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Monitor organizational systems, including inbound and outbound communications traffic, to detect attacks and indicators of potential attacks.' WHERE [Requirement_Id] = 16951
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Identify unauthorized use of organizational systems.' WHERE [Requirement_Id] = 16952
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]='Develop, document, and periodically update system security plans that describe system boundaries, system environments of operation, how security requirements are implemented, and the relationships with or connections to other systems.' WHERE [Requirement_Id] = 28163
PRINT(N'Operation applied to 59 rows out of 59')

PRINT(N'Update rows in [dbo].[MATURITY_QUESTIONS]')
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='3. Does the acquirer identify suppliers from which it requires documented verification of an ability to meet the critical service’s resilience requirements?' WHERE [Mat_Question_Id] = 1217
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='4. Does the acquirer consider external entities’ own external dependency risks before entering into formal agreements to support the critical service?' WHERE [Mat_Question_Id] = 1218
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='5. Do formal agreements require that suppliers maintain [[disruption management]] plans (incident management, service continuity, etc.)?' WHERE [Mat_Question_Id] = 1223
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='1. Does the acquirer identify and document the [[resilience requirement|resilience requirements]] for technology assets that support the critical service?' WHERE [Mat_Question_Id] = 1225
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]='<p><strong>Question intent: </strong>To determine if the acquirer reviews disruption management plans (service
    continuity and incident management plans) based on changes to external entity relationships.</p>
<p>Examples of changes that may trigger a plan review include</p>
<ul>
    <li>supplier relationships change, resulting in a single point of failure</li>
    <li>a supplier agreement is terminated</li>
    <li>changes in the composition of sub-contractors</li>
    <li>external entity assets move to a different legal jurisdiction that may affect reporting or other requirements</li>
</ul>
<p><strong>Typical work products:</strong></p>
<ul>
    <li>list of external entity agreements, changes to which trigger plan review</li>
    <li>staff responsibilities in job descriptions</li>
    <li>internal correspondence or policy detailing changes that are relevant to disruption management plans</li>
</ul>
<p><strong>Criteria for &ldquo;Yes&rdquo; Response:</strong></p>
<ul>
    <li>The acquirer reviews disruption management plans when external entity relationships change in order to
        identify necessary plan changes.</li>
</ul>
<p><strong>Criteria for &ldquo;Incomplete&rdquo; Response:</strong></p>
<ul>
    <li>The acquirer reviews plans based on changes involving some external entities, it reviews plans inconsistently,
        or the practice appears otherwise incomplete.</li>
</ul>' WHERE [Mat_Question_Id] = 1795
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]='<p><strong>Question intent: </strong>To determine if the acquirer reviews disruption management plans (service      continuity and incident management plans) based on changes to external entity relationships.</p>  <p>Examples of changes that may trigger a plan review include</p>  <ul>      <li>supplier relationships change, resulting in a single point of failure</li>      <li>a supplier agreement is terminated</li>      <li>changes in the composition of sub-contractors</li>      <li>external entity assets move to a different legal jurisdiction that may affect reporting or other requirements</li>  </ul>  <p><strong>Typical work products:</strong></p>  <ul>      <li>list of external entity agreements, changes to which trigger plan review</li>      <li>staff responsibilities in job descriptions</li>      <li>internal correspondence or policy detailing changes that are relevant to disruption management plans</li>  </ul>  <p><strong>Criteria for &ldquo;Yes&rdquo; Response:</strong></p>  <ul>      <li>The acquirer reviews disruption management plans when external entity relationships change in order to          identify necessary plan changes.</li>  </ul>  <p><strong>Criteria for &ldquo;Incomplete&rdquo; Response:</strong></p>  <ul>      <li>The acquirer reviews plans based on changes involving some external entities, it reviews plans inconsistently,          or the practice appears otherwise incomplete.</li>  </ul>' WHERE [Mat_Question_Id] = 1796
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]='<p><strong>Question intent: </strong>To determine if the acquirer reviews disruption management plans (service      continuity and incident management plans) based on changes to external entity relationships.</p>  <p>Examples of changes that may trigger a plan review include</p>  <ul>      <li>supplier relationships change, resulting in a single point of failure</li>      <li>a supplier agreement is terminated</li>      <li>changes in the composition of sub-contractors</li>      <li>external entity assets move to a different legal jurisdiction that may affect reporting or other requirements</li>  </ul>  <p><strong>Typical work products:</strong></p>  <ul>      <li>list of external entity agreements, changes to which trigger plan review</li>      <li>staff responsibilities in job descriptions</li>      <li>internal correspondence or policy detailing changes that are relevant to disruption management plans</li>  </ul>  <p><strong>Criteria for &ldquo;Yes&rdquo; Response:</strong></p>  <ul>      <li>The acquirer reviews disruption management plans when external entity relationships change in order to          identify necessary plan changes.</li>  </ul>  <p><strong>Criteria for &ldquo;Incomplete&rdquo; Response:</strong></p>  <ul>      <li>The acquirer reviews plans based on changes involving some external entities, it reviews plans inconsistently,          or the practice appears otherwise incomplete.</li>  </ul>' WHERE [Mat_Question_Id] = 1797
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='4. Have internal and external stakeholders for external dependencies management activities been identified and made aware of their cybersecurity roles?' WHERE [Mat_Question_Id] = 1811
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]='5. Have external dependencies management standards, guidelines and roles been established and implemented?' WHERE [Mat_Question_Id] = 1812
PRINT(N'Operation applied to 9 rows out of 9')

PRINT(N'Add rows to [dbo].[GEN_FILE_LIB_PATH_CORL]')
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (3967, 569)
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (3968, 569)
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (3969, 569)
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (3970, 569)
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (3971, 569)
INSERT INTO [dbo].[GEN_FILE_LIB_PATH_CORL] ([Gen_File_Id], [Lib_Path_Id]) VALUES (4980, 569)
PRINT(N'Operation applied to 6 rows out of 6')

PRINT(N'Add rows to [dbo].[MATURITY_REFERENCE_TEXT]')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (1201, 1, '<p class="p1"><strong>CERT-RMM Reference</strong></p>
    <p class="p1"><strong>[SC:SG2.SP1]</strong> Identify the acquirer&apos;s high-value services</p>
    <p class="p1">A fundamental risk management principle is to focus on activities to protect and sustain services and assets that most directly affect the acquirer&apos;s ability to achieve its mission. This practice refers to identifying the assessed acquirer&apos;s high-value services, which it provides to its customers and other stakeholders.</p>
    <p class="p1"><strong>Additional References</strong></p>
    <p class="p1"><em>NIST Special Publication 800-53 Revision 4,</em> &ldquo;Security and Privacy Controls for Federal Information</p>
    <p class="p1">Systems and Organizations&rdquo;, The Fundamentals, 2.1 Multitiered Risk Management.</p>
    <p class="p1">To integrate the risk management process throughout the organization and more effectively address mission/business concerns, a three-tiered approach is employed that addresses risk at the: (i) <em>organizational</em> level; </p>
    <p class="p1">(ii) <em>mission/business process</em> level; and </p>
    <p class="p1">(iii) <em>information system</em> level.</p>
    <p class="p1">Tier 1 provides a <em>prioritization of organizational missions/business functions which in turn drives </em><em>investment strategies and funding decisions</em>--promoting cost-effective, efficient information technology solutions consistent with the strategic goals and objectives of the organization and measures of performance.</p>
    <p class="p1">NIST CSF References: ID.BE</p>')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (1203, 1, '<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[ADM:SG1.SP1] </strong>Inventory assets</p>
<p class="p1">An acquirer must be able to identify its high-value assets, document them, and establish their value. This
    is done in order to develop strategies for protecting and sustaining assets commensurate with their value to
    services. The term high-value assets refers both to assets that are internal to the assessed acquirer and those that
    are owned, maintained, provided, etc. by external entities.</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1">NIST Special Publication 800-18 Revision 1, &ldquo;Guide for Developing Security Plans for Federal Information Systems,&rdquo; 2-3.</p>
<p class="p1">NIST CSF References: ID.AM-1, ID.AM-2, ID.AM-4</p>')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (1204, 1, '<p class="p1"><strong>CERT-RMM Reference</strong></p>
<p class="p1"><strong>[CTRL:SG1.SP1]</strong> Define control objectives</p>
<p class="p1">Define and document control objectives that result from management directives and guidelines. Affinity
    analysis of directives and guidelines may be useful in identifying categories of control objectives.</p>
<p class="p1">These are examples of control objectives:</p>
<p class="p1">&bull; prevent unauthorized use of purchase orders</p>
<p class="p1">&bull; ensure adequate supplies of materials</p>
<p class="p1">&bull; establish an enterprise architecture for information technology</p>
<p class="p1">&bull; all outside support personnel are identified</p>
<p class="p1">&bull; identify and assess risks that may cause material misstatements of financial records</p>
<p class="p1">&bull; educate and train staff</p>
<p class="p1">&bull; ensure the confidentiality and integrity of customers&apos; payment information</p>
<p class="p1">&bull; establish a compliance program</p>
<p class="p1"><strong>Additional References</strong></p>
<p class="p1"><em>NIST Special Publication 800-53 Revision 4</em>, &ldquo;Security and Privacy Controls for Federal
    Information Systems and Organizations&rdquo;, 2.1 Multitiered Risk Management.</p>
<p class="p1">The selection and specification of security controls for an information system is accomplished as part of
    an organization-wide information security program for the management of risk --that is, the risk to organizational
    operations and assets, individuals, other organizations, and the Nation associated with the operation of information
    systems. <em>Risk-based approaches to security control selection and </em><em>specification consider effectiveness,
        efficiency, and constraints due to applicable federal laws, Executive </em><em>Orders, directives, policies,
        regulations, standards, and guidelines.</em></p>
<p class="p1">NIST CSF References: ID.BE-5, ID.GV-3</p>')
PRINT(N'Operation applied to 3 rows out of 3')

PRINT(N'Add rows to [dbo].[MATURITY_REFERENCES]')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (2, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (3, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (4, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (5, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (6, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (7, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (8, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (9, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (10, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (11, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (12, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (13, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (14, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (15, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (16, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (17, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (18, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (19, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (20, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (21, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (22, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (23, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (24, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (25, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (26, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (27, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (28, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (29, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (30, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (32, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (33, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (34, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (35, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (36, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (37, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (38, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (39, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (40, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (41, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (42, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (43, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (44, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (45, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (46, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (47, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (48, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (49, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (50, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (51, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (52, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (53, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (54, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (55, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (56, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (57, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (58, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (59, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (60, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (61, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (62, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (63, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (64, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (65, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (66, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (67, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (68, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (69, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (70, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (71, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (72, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (73, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (74, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (75, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (76, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (77, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (78, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (79, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (80, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (81, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (82, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (83, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (84, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (85, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (86, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (87, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (88, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (89, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (90, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (91, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (92, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (93, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (94, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (95, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (96, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (97, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (98, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (99, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (100, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (101, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (102, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (103, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (104, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (105, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (106, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (107, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (108, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (109, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (110, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (111, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (112, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (113, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (114, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (115, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (116, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (117, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (118, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (119, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (120, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (121, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (122, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (123, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (124, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (125, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (126, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (127, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (128, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (129, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (130, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (131, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (132, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (133, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (134, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (135, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (136, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (137, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (138, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (139, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (140, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (141, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (142, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (143, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (144, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (145, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (146, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (147, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (148, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (149, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (150, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (151, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (152, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (153, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (154, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (155, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (156, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (157, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (158, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (159, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (160, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (161, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (162, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (163, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (164, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (165, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (166, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (167, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (168, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (169, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (170, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (171, 3966, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1201, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1201, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1202, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1202, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1203, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1203, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1204, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1204, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1205, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1205, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1206, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1206, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1207, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1207, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1208, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1208, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1209, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1209, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1210, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1210, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1211, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1211, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1212, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1212, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1213, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1213, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1214, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1214, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1215, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1215, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1216, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1216, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1217, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1217, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1218, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1218, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1219, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1219, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1220, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1220, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1221, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1221, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1222, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1222, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1223, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1223, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1224, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1224, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1225, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1225, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1226, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1226, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1227, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1227, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1228, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1228, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1229, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1229, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1230, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1230, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1231, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1231, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1232, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1232, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1233, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1233, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1234, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1234, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1235, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1235, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1236, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1236, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1237, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1237, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1238, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1238, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1239, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1239, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1240, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1240, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1241, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1241, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1254, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1254, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1255, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1255, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1256, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1256, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1257, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1257, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1258, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1258, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1259, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1259, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1260, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1260, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1261, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1261, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1262, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1262, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1263, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1263, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1264, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1264, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1265, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1265, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1266, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1266, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1267, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1267, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1268, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1268, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1269, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1269, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1270, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1270, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1271, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1271, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1272, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1272, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1273, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1273, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1274, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1274, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1275, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1275, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1276, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1276, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1277, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1277, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1278, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1278, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1279, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1279, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1280, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1280, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1281, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1281, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1282, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1282, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1283, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1283, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1284, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1284, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1285, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1285, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1286, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1286, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1287, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1287, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1288, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1288, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1783, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1783, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1784, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1784, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1785, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1785, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1786, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1786, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1787, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1787, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1788, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1788, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1789, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1789, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1790, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1790, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1791, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1791, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1792, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1792, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1793, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1793, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1794, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1794, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1795, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1795, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1796, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1796, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1797, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1797, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1798, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1798, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1799, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1799, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1800, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1800, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1801, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1801, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1802, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1802, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1803, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1803, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1804, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1804, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1805, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1805, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1806, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1806, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1807, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1807, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1808, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1808, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1809, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1809, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1810, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1810, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1811, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1811, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1812, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1812, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1813, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1813, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1814, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1814, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1815, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1815, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1816, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1816, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1817, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1817, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1818, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1818, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1819, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1819, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1820, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1820, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1821, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1821, 3962, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1822, 3961, '', NULL, '')
INSERT INTO [dbo].[MATURITY_REFERENCES] ([Mat_Question_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (1822, 3962, '', NULL, '')
PRINT(N'Operation applied to 403 rows out of 403')

UPDATE [dbo].[GEN_FILE] SET [File_Name]='CMMC_AG_Lvl1_20201208_editable.pdf', [Title]='CMMC Assessment Guide: Level 1, Version 1.10 | 30 November 2020', [Name]='(no name)', [File_Size]=1145432, [Description]=NULL, [Short_Name]='CMMC Assessment Guide: Level 1', [Publish_Date]='2020-11-30 00:00:00.000', [Doc_Version]=NULL, [Summary]='This document provides assessment guidance for Level 1 of the Cybersecurity Maturity
Model Certification (CMMC). Guidance for conducting a CMMC Level 3 assessment can be
found in CMMC Assessment Guide – Level 3. Guidance for conducting a CMMC Level 4 or 5
assessment will be published at a later date. More details on the model can be found in the
CMMC Model Overview document.
Level 1 of CMMC addresses the protection of Federal Contract Information (FCI) and
encompasses the basic safeguarding requirements for FCI specified in Federal Acquisition
Regulation (FAR) Clause 52.204-21, which defines FCI as:
Information, not intended for public release, that is provided by or generated for
the Government under a contract to develop or deliver a product or service to
the Government, but not including information provided by the Government to
the public (such as on public websites) or simple transactional information, such
as necessary to process payments.
A CMMC assessment is the methodology to certify that a contractor is compliant with the
CMMC standard. Assessments are conducted by CMMC Third-Party Assessment
Organizations (C3PAOs) and Certified Assessors.
DoD contracts that specify the need for a contractor to process, store, or transmit FCI require
the company to comply with CMMC Level 1 practices. There is no CMMC process maturity
assessed at Level 1.', [Data]=null, Is_Uploaded=0 WHERE [Gen_File_Id] = 3963


PRINT(N'Add constraints to [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] CHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_REFERENCES] CHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Add constraints to [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Add constraints to [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] WITH CHECK CHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] WITH CHECK CHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[NERC_RISK_RANKING] CHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] CHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] CHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] CHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Add constraints to [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] CHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]

PRINT(N'Add constraints to [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] CHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] CHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_REF_LIBRARY_PATH]
COMMIT TRANSACTION
GO
