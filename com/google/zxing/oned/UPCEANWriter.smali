.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "UPCEANWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    array-length v0, v0

    return v0
.end method
