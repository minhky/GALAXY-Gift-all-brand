.class public Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
.super Ljava/lang/Object;
.source "JsonSchema.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .registers 2
    .param p1, "schema"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    return-void
.end method

.method public static getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 3

    .prologue
    .line 89
    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 90
    .local v0, "objectNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "any"

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p1, p0, :cond_5

    .line 79
    :cond_4
    :goto_4
    return v1

    .line 72
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 73
    :cond_9
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    if-nez v3, :cond_f

    move v1, v2

    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    .line 76
    .local v0, "other":Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v3, :cond_1c

    .line 77
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 79
    :cond_1c
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getSchemaNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method