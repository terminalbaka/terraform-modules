# DNS Record - cloudflare

Modulo para criar DNS na cloudflare

## Variaveis

| Nome | Tipo | Valor default | Descrição |
| ---- | ---- | ---- | ---- |
| `zone_id` | string | Não tem | Id da zona que deseja criar o dns |
| `type` | string | Não tem | Tipo do domínio a ser criado. Ex: `A`, `CNAME`, `TXT`, ... |
| `name` | string | Não tem | Nome do domínio que deseja criar |
| `value` | string | Não tem | Endereço de referencia para qual o domínio vai apontar |
| `proxied` | bool | false | O endereço vai transitar dentro do proxy da cloudflare |
| `priority` | number | null | Ordem de prioridade do domínio |
| `ttl` | number | 1 | Tempo que levara´para a alteração ser concluida |
| `comment` | bool | null | Comentários sobre o recurso |

## Outputs

| Nome | Descrição |
| ---- | ---- |
| `name` | Dominio criado |

## Example

```
module "dominio" {
  source   = "github.com/terminalbaka/terraform-modules.git//modules/cloudflare/dns-record?ref=v1.0.0"
  zone_id  = "zonax"
  type     = "A"
  name     = "example.com.br"
  content  = "192.168.0.20"
  proxied  = false
  priority = 10
  ttl      = 1
  comment  = "Dominio de exemplo"
}
```