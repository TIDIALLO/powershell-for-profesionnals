# [datetime]::new
#  Methods and properties
# class Person {
#     [string]$prenom
#     [string]$nom
#     [int]$age
#     [string]Greeting() {
#         return "Greetings, {0} {1} {2}!" -f $this.prenom, $this.nom, $this.age
#     }
# }
# $p = [Person]::new()
# $p.prenom = "Abdou"
# $p.nom = "Diop"
# $p.age = 28
# $greeting = $p.Greeting()
# $greeting

##############################################################
#       Constructor overloading
# class Person1 {
#     [string]$prenom
#     [string]$nom
#     [int]$age

#     Person1([string] $prenom) {
#         $this.prenom = $prenom
#     }
#     Person1([string] $prenom, [string] $nom, [int]$age ) {
#         $this.prenom = $prenom
#         $this.nom = $nom
#         $this.age = $age
#     }

#     [string]Greeting() {
#         return "Greetings, {0} {1} {2}!" -f $this.prenom, $this.nom, $this.age
#     }
# }

# : Get All Members of an Instance
# Get-Member -InputObject $anObjectInstance

##############################################################
##############################################################
#  Basic Class Template
# Define a class
class TypeName {
    # Property with validate set
    [ValidateSet("val1", "Val2")]
    [string] $P1
    # Static property
    static [hashtable] $P2
    # Hidden property does not show as result of Get-Member
    hidden [int] $P3
    # Constructor
    TypeName ([string] $s) {
        $this.P1 = $s 
    }
    # Static method
    static [void] MemberMethod1([hashtable] $h) {
        [TypeName]::P2 = $h
    }
    # Instance method
    [int] MemberMethod2([int] $i) {

        $this.P3 = $i
        return $this.P3
    }
}
# Inheritance from Parent Class to Child Class
class ParentClass {
    [string] $Message = "It's under the Parent Class"
    [string] $Message = "It's under the Parent Class"
}
# Bar extends Foo and inherits its members
class ChildClass : ParentClass {
}
$Inherit = [ChildClass]::new()
