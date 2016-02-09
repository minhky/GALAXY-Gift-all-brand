.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 210
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v7, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v2, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v4, :cond_4e

    .line 213
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 214
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_56

    .line 233
    invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 234
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_1e
    :goto_1e
    :sswitch_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 219
    :sswitch_21
    add-int/lit8 v9, v4, -0x2

    if-ge v3, v9, :cond_1e

    .line 220
    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 221
    .local v5, "nextChar":C
    const/16 v9, 0xd

    if-eq v5, v9, :cond_1e

    const/16 v9, 0xa

    if-eq v5, v9, :cond_1e

    .line 222
    add-int/lit8 v9, v3, 0x2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 223
    .local v6, "nextNextChar":C
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v1

    .line 224
    .local v1, "firstDigit":I
    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v8

    .line 225
    .local v8, "secondDigit":I
    if-ltz v1, :cond_4b

    if-ltz v8, :cond_4b

    .line 226
    shl-int/lit8 v9, v1, 0x4

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    :cond_4b
    add-int/lit8 v3, v3, 0x2

    goto :goto_1e

    .line 237
    .end local v0    # "c":C
    .end local v1    # "firstDigit":I
    .end local v5    # "nextChar":C
    .end local v6    # "nextNextChar":C
    .end local v8    # "secondDigit":I
    :cond_4e
    invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 238
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 214
    :sswitch_data_56
    .sparse-switch
        0xa -> :sswitch_1e
        0xd -> :sswitch_1e
        0x3d -> :sswitch_21
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 324
    if-eqz p0, :cond_62

    .line 325
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 326
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 327
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x5

    new-array v1, v8, [Ljava/lang/String;

    .line 328
    .local v1, "components":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 330
    .local v7, "start":I
    const/4 v0, 0x0

    .line 331
    .local v0, "componentIndex":I
    :goto_1e
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    if-ge v0, v8, :cond_36

    const/16 v8, 0x3b

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, "end":I
    if-lez v2, :cond_36

    .line 332
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 334
    add-int/lit8 v7, v2, 0x1

    goto :goto_1e

    .line 336
    .end local v2    # "end":I
    :cond_36
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    .local v6, "newName":Ljava/lang/StringBuilder;
    const/4 v8, 0x3

    invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 339
    const/4 v8, 0x1

    invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 340
    const/4 v8, 0x2

    invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 341
    invoke-static {v1, v9, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 342
    const/4 v8, 0x4

    invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 343
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 346
    .end local v0    # "componentIndex":I
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newName":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_62
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 314
    if-eqz p0, :cond_e

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_d
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 26
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v11, 0x0

    .line 106
    .local v11, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 107
    .local v4, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 109
    .local v12, "max":I
    :goto_6
    if-ge v4, v12, :cond_3d

    .line 113
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "(?:^|\n)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "(?:;([^:]*))?:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 115
    .local v10, "matcher":Ljava/util/regex/Matcher;
    if-lez v4, :cond_37

    .line 116
    add-int/lit8 v4, v4, -0x1

    .line 118
    :cond_37
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v20

    if-nez v20, :cond_3e

    .line 205
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_3d
    return-object v11

    .line 121
    .restart local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_3e
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    .line 123
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "metadataString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 125
    .local v13, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 126
    .local v17, "quotedPrintable":Z
    const/16 v18, 0x0

    .line 127
    .local v18, "quotedPrintableCharset":Ljava/lang/String;
    if-eqz v14, :cond_ba

    .line 128
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5f
    if-ge v5, v7, :cond_ba

    aget-object v15, v2, v5

    .line 129
    .local v15, "metadatum":Ljava/lang/String;
    if-nez v13, :cond_6e

    .line 130
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .restart local v13    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6e
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v16

    .line 134
    .local v16, "metadatumTokens":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_aa

    .line 135
    const/16 v20, 0x0

    aget-object v6, v16, v20

    .line 136
    .local v6, "key":Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v19, v16, v20

    .line 137
    .local v19, "value":Ljava/lang/String;
    const-string v20, "ENCODING"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_ad

    const-string v20, "QUOTED-PRINTABLE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_ad

    .line 138
    const/16 v17, 0x1

    .line 128
    .end local v6    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_aa
    :goto_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 139
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_ad
    const-string v20, "CHARSET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_aa

    .line 140
    move-object/from16 v18, v19

    goto :goto_aa

    .line 146
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v15    # "metadatum":Ljava/lang/String;
    .end local v16    # "metadatumTokens":[Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_ba
    move v9, v4

    .line 148
    .local v9, "matchStart":I
    :goto_bb
    const/16 v20, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_12d

    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v4, v0, :cond_f8

    add-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f5

    add-int/lit8 v20, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f8

    .line 152
    :cond_f5
    add-int/lit8 v4, v4, 0x2

    goto :goto_bb

    .line 153
    :cond_f8
    if-eqz v17, :cond_12d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v4, v0, :cond_112

    add-int/lit8 v20, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12a

    :cond_112
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v4, v0, :cond_12d

    add-int/lit8 v20, v4, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12d

    .line 156
    :cond_12a
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 162
    :cond_12d
    if-gez v4, :cond_132

    .line 164
    move v4, v12

    goto/16 :goto_6

    .line 165
    :cond_132
    if-le v4, v9, :cond_1e0

    .line 167
    if-nez v11, :cond_13f

    .line 168
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .restart local v11    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_13f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v4, v0, :cond_159

    add-int/lit8 v20, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_159

    .line 171
    add-int/lit8 v4, v4, -0x1

    .line 173
    :cond_159
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "element":Ljava/lang/String;
    if-eqz p2, :cond_165

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 177
    :cond_165
    if-eqz v17, :cond_196

    .line 178
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    if-eqz p3, :cond_181

    .line 180
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_181
    :goto_181
    if-nez v13, :cond_1d5

    .line 191
    new-instance v8, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v8, "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v8    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_192
    add-int/lit8 v4, v4, 0x1

    .line 199
    goto/16 :goto_6

    .line 183
    :cond_196
    if-eqz p3, :cond_1aa

    .line 184
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_1aa
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    const-string v21, "$1"

    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_181

    .line 195
    :cond_1d5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_192

    .line 200
    .end local v3    # "element":Ljava/lang/String;
    :cond_1e0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 4
    .param p0, "components"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "newName"    # Ljava/lang/StringBuilder;

    .prologue
    .line 349
    aget-object v0, p0, p1

    if-eqz v0, :cond_e

    .line 350
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_e
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p0, "fragmentBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 245
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 247
    .local v2, "fragmentBytes":[B
    if-nez p1, :cond_18

    .line 248
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 257
    .local v1, "fragment":Ljava/lang/String;
    :goto_11
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v1    # "fragment":Ljava/lang/String;
    .end local v2    # "fragmentBytes":[B
    :cond_17
    return-void

    .line 251
    .restart local v2    # "fragmentBytes":[B
    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1d} :catch_1e

    .restart local v1    # "fragment":Ljava/lang/String;
    goto :goto_11

    .line 252
    .end local v1    # "fragment":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "fragment":Ljava/lang/String;
    goto :goto_11
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 276
    :cond_8
    const/4 v4, 0x0

    .line 285
    :goto_9
    return-object v4

    .line 278
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 280
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 282
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 285
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_36
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_9
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 290
    :cond_8
    const/4 v7, 0x0

    .line 310
    :goto_9
    return-object v7

    .line 292
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 294
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 295
    .local v6, "type":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3a

    .line 296
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, "metadatum":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 298
    .local v0, "equals":I
    if-gez v0, :cond_3e

    .line 300
    move-object v6, v4

    .line 308
    .end local v0    # "equals":I
    .end local v4    # "metadatum":Ljava/lang/String;
    :cond_3a
    :goto_3a
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 303
    .restart local v0    # "equals":I
    .restart local v4    # "metadatum":Ljava/lang/String;
    :cond_3e
    const-string v7, "TYPE"

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 304
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    goto :goto_3a

    .line 295
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 310
    .end local v0    # "equals":I
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "metadatum":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_55
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_9
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 34
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 53
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v29

    .line 54
    .local v29, "rawText":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 55
    .local v23, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 56
    :cond_18
    const/4 v1, 0x0

    .line 83
    :goto_19
    return-object v1

    .line 58
    :cond_1a
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v24

    .line 59
    .local v24, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v24, :cond_33

    .line 61
    const-string v1, "N"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v24

    .line 62
    invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 64
    :cond_33
    const-string v1, "NICKNAME"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v25

    .line 65
    .local v25, "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v25, :cond_101

    const/4 v3, 0x0

    .line 66
    .local v3, "nicknames":[Ljava/lang/String;
    :goto_40
    const-string v1, "TEL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v28

    .line 67
    .local v28, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "EMAIL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v20

    .line 68
    .local v20, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "NOTE"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v26

    .line 69
    .local v26, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ADR"

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v18

    .line 70
    .local v18, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "ORG"

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v27

    .line 71
    .local v27, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BDAY"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v19

    .line 72
    .local v19, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_8f

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 73
    const/16 v19, 0x0

    .line 75
    :cond_8f
    const-string v1, "TITLE"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v30

    .line 76
    .local v30, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "URL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v31

    .line 77
    .local v31, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "IMPP"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v22

    .line 78
    .local v22, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "GEO"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v21

    .line 79
    .local v21, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v21, :cond_112

    const/16 v17, 0x0

    .line 80
    .local v17, "geo":[Ljava/lang/String;
    :goto_bb
    if-eqz v17, :cond_c5

    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c5

    .line 81
    const/16 v17, 0x0

    .line 83
    :cond_c5
    new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v30 .. v30}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v31 .. v31}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_19

    .line 65
    .end local v3    # "nicknames":[Ljava/lang/String;
    .end local v17    # "geo":[Ljava/lang/String;
    .end local v18    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v21    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_101
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_40

    .line 79
    .restart local v3    # "nicknames":[Ljava/lang/String;
    .restart local v18    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v21    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_112
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v17

    goto :goto_bb
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3
    .param p1, "x0"    # Lcom/google/zxing/Result;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
