.class public final Lcom/fasterxml/jackson/databind/type/ArrayType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "ArrayType.java"


# static fields
.field private static final serialVersionUID:J = 0x7d74bce994c9ddf5L


# instance fields
.field protected final _componentType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _emptyArray:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 12

    .prologue
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 34
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 35
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 48
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_33

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incompatible narrowing operation: trying to narrow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    .prologue
    .line 220
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public containedTypeCount()I
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    if-nez p1, :cond_6

    const-string/jumbo v0, "E"

    .line 201
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 250
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 255
    :cond_4
    :goto_4
    return v0

    .line 251
    :cond_5
    if-eqz p1, :cond_4

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 254
    check-cast p1, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public bridge synthetic getContentType()Lcom/fasterxml/jackson/core/type/ResolvedType;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 231
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 225
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hasGenericTypes()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public isArrayType()Z
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public isConcrete()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 146
    :goto_8
    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 157
    :goto_8
    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p0

    goto :goto_8
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 66
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 8

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 83
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 7

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    if-eqz v0, :cond_5

    .line 92
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    .line 57
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .registers 8

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    .line 75
    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method
