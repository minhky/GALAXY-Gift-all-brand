.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# instance fields
.field private _timezone:Ljava/util/TimeZone;

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private final shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field private final timezoneStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 203
    const-string/jumbo v0, ""

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
    .registers 6

    .prologue
    .line 207
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 212
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "##default"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_12
    move-object v3, v5

    :goto_13
    if-eqz p4, :cond_24

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "##default"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_24
    move-object v4, v5

    :goto_25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V

    .line 219
    return-void

    .line 212
    :cond_2c
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    move-object v4, p4

    goto :goto_25
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V
    .registers 6

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 240
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    .line 241
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 242
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
    .registers 6

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 228
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    .line 229
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 293
    if-nez v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 295
    const/4 v0, 0x0

    .line 299
    :cond_9
    :goto_9
    return-object v0

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    goto :goto_9
.end method

.method public hasLocale()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPattern()Z
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasShape()Z
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimeZone()Z
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public timeZoneAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_b

    .line 286
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    goto :goto_a
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 8

    .prologue
    .line 263
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 8

    .prologue
    .line 249
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 8

    .prologue
    .line 256
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 8

    .prologue
    .line 270
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method
