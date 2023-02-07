import Web

extension FontFamilyType {
    static var sanFrancisco: Self { .init("San Francisco") }
    
    static var roboto: Self { .init("Roboto") }
    
    static var segoeUI: Self { .init("Segoe UI") }
    
    static var helveticaNeue: Self { .init("Helvetica Neue") }
    
    static var lucidaGrande: Self { .init("Lucida Grande") }
    
    static var app: Self { .combined(.system, .appleSystem, .sanFrancisco, .roboto, .segoeUI, .helveticaNeue, .lucidaGrande, .sansSerif) }
}
