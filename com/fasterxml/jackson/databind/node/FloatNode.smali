.class public Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "v"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return-void
.end method

.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
    .registers 2
    .param p0, "v"    # F

    .prologue
    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public canConvertToLong()Z
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x21000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p1, p0, :cond_5

    .line 113
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v1

    .line 106
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 107
    :cond_9
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    if-eqz v3, :cond_1b

    .line 110
    check-cast p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 111
    .local v0, "otherValue":F
    iget v3, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .end local v0    # "otherValue":F
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1b
    move v1, v2

    .line 113
    goto :goto_4
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    return v0
.end method

.method public isFloat()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 100
    return-void
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
