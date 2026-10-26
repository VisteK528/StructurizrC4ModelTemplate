workspace "Online Shop" "Example C4 model - replace with your own system." {
    !identifiers hierarchical

    model {
        !include model/example.dsl
    }

    views {
        # Views use autoLayout by default. To position elements manually,
        # remove the autoLayout line from a view and drag elements in the UI;
        # the layout is then saved to workspace.json (commit that file).
        systemContext shop "01-context" {
            include *
            autoLayout lr
        }

        container shop "02-containers" {
            include *
            autoLayout lr
        }

        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Database" {
                shape Cylinder
            }
            element "External" {
                background #999999
            }
        }
    }
}
