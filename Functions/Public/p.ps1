Function p {
    <#
    .SYNOPSIS
    Create a p tag in an HTML document.
    
    .EXAMPLE

    p 
    .EXAMPLE
    p "woop1" -Class "class"

    .EXAMPLE
    p "woop2" -Class "class" -Id "Something"

    .EXAMPLE
    p "woop3" -Class "class" -Id "something" -Style "color:red;"

    .Notes
    Author: Kevin Bates
    Version: 0.1.0
    History:
        @bateskevin;v0.1.0;40/10/2018;creation

    #>
    [Cmdletbinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [AllowEmptyString()]
        [AllowNull()]
        [String]
        $Content,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Class="",

        [String]$Id,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Style,

        [String]$title
    )

        $attr = ""
        $CommonParameters = ("Attributes", "content") + [System.Management.Automation.PSCmdlet]::CommonParameters + [System.Management.Automation.PSCmdlet]::OptionalCommonParameters
        $CustomParameters = $PSBoundParameters.Keys | ? { $_ -notin $CommonParameters }
        
        if($CustomParameters){
            
            foreach ($entry in $CustomParameters){

                
                $Attr += "{0}=`"{1}`" " -f $entry,$PSBoundParameters[$entry]
    
            }
                
        }

        if($Attributes){
            foreach($entry in $Attributes.Keys){
               
                $attr += "{0}=`"{1}`" " -f $entry,$Attributes[$Entry]
            }
        }


if($attr){
    $return = @"
    <p $attr>$Content</p>
"@

}else{

    $return =     @"
    <p>$Content</p>
"@
}

return $return

}