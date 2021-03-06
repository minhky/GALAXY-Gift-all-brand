.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _readers:[Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .registers 5

    .prologue
    .line 65
    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    sget-object v1, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    .line 67
    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .registers 5

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 78
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 79
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 80
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    .line 81
    return-void
.end method

.method private _findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 217
    .line 219
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v2, v1

    move-object v0, v1

    :goto_8
    if-ge v4, v6, :cond_4c

    aget-object v3, v5, v4

    .line 220
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->reset()V

    .line 221
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_2b

    move-object v1, v2

    .line 219
    :goto_26
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_8

    .line 227
    :cond_2b
    if-eqz v2, :cond_39

    .line 228
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_39

    move-object v1, v2

    .line 229
    goto :goto_26

    .line 235
    :cond_39
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v2

    if-lt v0, v2, :cond_4f

    .line 239
    :goto_45
    invoke-virtual {p1, v3, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->createMatcher(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0

    :cond_4a
    move-object v1, v2

    goto :goto_26

    :cond_4c
    move-object v1, v0

    move-object v3, v2

    goto :goto_45

    :cond_4f
    move-object v0, v1

    move-object v1, v3

    goto :goto_26
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .registers 4

    .prologue
    .line 157
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([B)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .registers 3

    .prologue
    .line 169
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([BII)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .registers 5

    .prologue
    .line 183
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v2, v0

    .line 198
    if-lez v2, :cond_3a

    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x1

    :goto_20
    if-ge v0, v2, :cond_3a

    .line 201
    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 205
    :cond_3a
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v0

    .line 124
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 125
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_15

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 128
    :cond_15
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public with([Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 6

    .prologue
    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 6

    .prologue
    .line 109
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    if-ne p1, v0, :cond_5

    .line 112
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_4
.end method

.method public withMinimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_5

    .line 100
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_4
.end method

.method public withOptimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_5

    .line 93
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_4
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v0

    .line 134
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 135
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_15

    .line 136
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 138
    :cond_15
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method
