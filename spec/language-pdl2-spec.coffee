describe "Pdl2 grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-pdl2")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.pdl2")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.pdl2"
