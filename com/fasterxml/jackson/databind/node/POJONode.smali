.class public Lcom/fasterxml/jackson/databind/node/POJONode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected _pojoEquals(Lcom/fasterxml/jackson/databind/node/POJONode;)Z
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 151
    :goto_9
    return v0

    .line 149
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 151
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public asBoolean(Z)Z
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    :cond_12
    return p1
.end method

.method public asDouble(D)D
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 95
    :cond_e
    return-wide p1
.end method

.method public asInt(I)I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 77
    :cond_e
    return p1
.end method

.method public asLong(J)J
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 86
    :cond_e
    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_8

    const-string/jumbo v0, "null"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public asText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public binaryValue()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_d

    .line 44
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 46
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;->binaryValue()[B

    move-result-object v0

    goto :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 135
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 140
    :cond_4
    :goto_4
    return v0

    .line 136
    :cond_5
    if-eqz p1, :cond_4

    .line 137
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    if-eqz v1, :cond_4

    .line 138
    check-cast p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/POJONode;->_pojoEquals(Lcom/fasterxml/jackson/databind/node/POJONode;)Z

    move-result v0

    goto :goto_4
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public getPojo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 109
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 113
    :goto_7
    return-void

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
