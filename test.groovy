/* groovylint-disable CompileStatic, DuplicateNumberLiteral */
class Version {

   final private List v;

   Version(List v) {
      this.v = v
   }

   Version(String s) {
      this.v = s.tokenize('.')*.toInteger()
   }

   boolean nextVersionValidate(Version nextVersion) {
      List e = [] // list of eligible versions

      e.add([v[0], v[1], v[2], v[3], v[4] + 1])
      e.add([v[0], v[1], v[2], v[3] + 1, 0])
      e.add([v[0], v[1], v[2] + 1, 0, 0])
      e.add([v[0], v[1] + 1, 0, 0, 0])
      e.add([v[0] + 1, 0, 0, 0, 0])

      //assert (nextVersion.v in e)
      return (nextVersion.v in e)
   }

}

Version v = new Version('3.5.3.29.1')

println v.nextVersionValidate(new Version('3.5.3.29.2'))
println v.nextVersionValidate(new Version('3.5.3.29.3')) //false
println v.nextVersionValidate(new Version('3.5.3.30.0'))
println v.nextVersionValidate(new Version('3.5.4.0.0'))
println v.nextVersionValidate(new Version([3, 6, 0, 0, 0]))
println v.nextVersionValidate(new Version([4, 0, 0, 0, 0]))
