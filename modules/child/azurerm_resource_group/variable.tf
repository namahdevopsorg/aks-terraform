variable "resource_groups" {
    type =map(object({
        rgname = string
        rglocation = string
    }))
}