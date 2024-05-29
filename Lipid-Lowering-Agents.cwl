cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  lipid-lowering-agents-100mg---primary:
    run: lipid-lowering-agents-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  lipid-lowering-agents-300mg---primary:
    run: lipid-lowering-agents-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-100mg---primary/output
  lipid-lowering-agents-400mg---primary:
    run: lipid-lowering-agents-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-300mg---primary/output
  lipid-lowering-agents-sugarfree---primary:
    run: lipid-lowering-agents-sugarfree---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-400mg---primary/output
  lipid-lowering-agents-fluvastatin---primary:
    run: lipid-lowering-agents-fluvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-sugarfree---primary/output
  lipid-lowering-agents-atorvastatin---primary:
    run: lipid-lowering-agents-atorvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-fluvastatin---primary/output
  lipid-lowering-agents-375mg---primary:
    run: lipid-lowering-agents-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-atorvastatin---primary/output
  lipid-lowering-agents-200mg---primary:
    run: lipid-lowering-agents-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-375mg---primary/output
  lipid-lowering-agents-modifiedrelease---primary:
    run: lipid-lowering-agents-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-200mg---primary/output
  lipid-lowering-agents-arrow---primary:
    run: lipid-lowering-agents-arrow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-modifiedrelease---primary/output
  lipid-lowering-agents-actavis---primary:
    run: lipid-lowering-agents-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-arrow---primary/output
  lipid-lowering-agents-300microgram---primary:
    run: lipid-lowering-agents-300microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-actavis---primary/output
  lipid-lowering-agents-squibb---primary:
    run: lipid-lowering-agents-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-300microgram---primary/output
  lipid-lowering-agents-aspartame---primary:
    run: lipid-lowering-agents-aspartame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-squibb---primary/output
  lipid-lowering-agents-500mg---primary:
    run: lipid-lowering-agents-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-aspartame---primary/output
  lipid-lowering-agents-hillcross---primary:
    run: lipid-lowering-agents-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-500mg---primary/output
  lipid-lowering-agents-625mg---primary:
    run: lipid-lowering-agents-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-hillcross---primary/output
  lipid-lowering-agents-micro---primary:
    run: lipid-lowering-agents-micro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-625mg---primary/output
  chewable-lipid-lowering-agents---primary:
    run: chewable-lipid-lowering-agents---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-micro---primary/output
  lipid-lowering-agents-dexcel---primary:
    run: lipid-lowering-agents-dexcel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chewable-lipid-lowering-agents---primary/output
  lipid-lowering-agents-bezafibrate---primary:
    run: lipid-lowering-agents-bezafibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-dexcel---primary/output
  lipid-lowering-agents-discovery---primary:
    run: lipid-lowering-agents-discovery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-bezafibrate---primary/output
  lipid-lowering-agents-sandoz---primary:
    run: lipid-lowering-agents-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-discovery---primary/output
  lipid-lowering-agents-750mg---primary:
    run: lipid-lowering-agents-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-sandoz---primary/output
  lipid-lowering-agents-lescol---primary:
    run: lipid-lowering-agents-lescol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-750mg---primary/output
  orange-lipid-lowering-agents---primary:
    run: orange-lipid-lowering-agents---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-lescol---primary/output
  lipid-lowering-agents-simvastatin---primary:
    run: lipid-lowering-agents-simvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: orange-lipid-lowering-agents---primary/output
  lipid-lowering-agents-1000mg---primary:
    run: lipid-lowering-agents-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-simvastatin---primary/output
  lipid-lowering-agents-wockhardt---primary:
    run: lipid-lowering-agents-wockhardt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-1000mg---primary/output
  lipid-lowering-agents-250mg---primary:
    run: lipid-lowering-agents-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-wockhardt---primary/output
  lipid-lowering-agents-rosuvastatin---primary:
    run: lipid-lowering-agents-rosuvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-250mg---primary/output
  lipid-lowering-agents-pfizer---primary:
    run: lipid-lowering-agents-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-rosuvastatin---primary/output
  lipid-lowering-agents-600mg---primary:
    run: lipid-lowering-agents-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-pfizer---primary/output
  lipid-lowering-agents-zocor---primary:
    run: lipid-lowering-agents-zocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-600mg---primary/output
  lopid-lipid-lowering-agents---primary:
    run: lopid-lipid-lowering-agents---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-zocor---primary/output
  lipid-lowering-agents-astrazenec---primary:
    run: lipid-lowering-agents-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lopid-lipid-lowering-agents---primary/output
  lipid-lowering-agents-ratiopharm---primary:
    run: lipid-lowering-agents-ratiopharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-astrazenec---primary/output
  lipid-lowering-agents-colestyramine---primary:
    run: lipid-lowering-agents-colestyramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-ratiopharm---primary/output
  nicotinic-lipid-lowering-agents---primary:
    run: nicotinic-lipid-lowering-agents---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-colestyramine---primary/output
  light-lipid-lowering-agents---primary:
    run: light-lipid-lowering-agents---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: nicotinic-lipid-lowering-agents---primary/output
  lipid-lowering-agents-seven---primary:
    run: lipid-lowering-agents-seven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: light-lipid-lowering-agents---primary/output
  lipid-lowering-agents-niche---primary:
    run: lipid-lowering-agents-niche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-seven---primary/output
  lipid-lowering-agents-solution---primary:
    run: lipid-lowering-agents-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-niche---primary/output
  lipid-lowering-agents-abbott---primary:
    run: lipid-lowering-agents-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-solution---primary/output
  lipid-lowering-agents-crestor---primary:
    run: lipid-lowering-agents-crestor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-abbott---primary/output
  lipid-lowering-agents-ranbaxy---primary:
    run: lipid-lowering-agents-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-crestor---primary/output
  lipid-lowering-agents-160mg---primary:
    run: lipid-lowering-agents-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-ranbaxy---primary/output
  lipid-lowering-agents-roche---primary:
    run: lipid-lowering-agents-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-160mg---primary/output
  lipid-lowering-agents-bezalip---primary:
    run: lipid-lowering-agents-bezalip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-roche---primary/output
  lipid-lowering-agents-colestipol---primary:
    run: lipid-lowering-agents-colestipol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-bezalip---primary/output
  lipid-lowering-agents-267mg---primary:
    run: lipid-lowering-agents-267mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-colestipol---primary/output
  lipid-lowering-agents-colestid---primary:
    run: lipid-lowering-agents-colestid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-267mg---primary/output
  lipid-lowering-agents-bristol---primary:
    run: lipid-lowering-agents-bristol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-colestid---primary/output
  lipid-lowering-agents-powder---primary:
    run: lipid-lowering-agents-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-bristol---primary/output
  lipid-lowering-agents-lipitor---primary:
    run: lipid-lowering-agents-lipitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-powder---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: lipid-lowering-agents-lipitor---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
